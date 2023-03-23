<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests\ExpenseRequest;
use Backpack\CRUD\app\Http\Controllers\CrudController;
use Backpack\CRUD\app\Library\CrudPanel\CrudPanelFacade as CRUD;
use App\Models\Category;

/**
 * Class ExpenseCrudController
 * @package App\Http\Controllers\Admin
 * @property-read \Backpack\CRUD\app\Library\CrudPanel\CrudPanel $crud
 */
class ExpenseCrudController extends CrudController
{
    use \Backpack\CRUD\app\Http\Controllers\Operations\ListOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\CreateOperation {
        store as traitStore;
    }
    use \Backpack\CRUD\app\Http\Controllers\Operations\UpdateOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\DeleteOperation;
    use \Backpack\CRUD\app\Http\Controllers\Operations\ShowOperation;

    /**
     * Configure the CrudPanel object. Apply settings to all operations.
     *
     * @return void
     */

    public function setup()
    {
        CRUD::setModel(\App\Models\Expense::class);
        CRUD::setRoute(config('backpack.base.route_prefix') . '/expense');
        CRUD::setEntityNameStrings('expense', 'expenses');
        $this->crud->orderBy('id', 'DESC');
    }

    /**
     * Define what happens when the List operation is loaded.
     *
     * @see  https://backpackforlaravel.com/docs/crud-operation-list-entries
     * @return void
     */
    protected function setupListOperation()
    {
        $this->crud->enableExportButtons();
        $mobile_cat =
            [
                'Itel', 'Tecno', 'Marcel', 'Jio'
            ];
        $ice_cream_cat =
        [
            'Polar', 'Lovello',
        ];
        $gp_cat =
        [
            'Grameenphone'
        ];


        $mobile_cat_id = $this->categoryFinder($mobile_cat);
        $ice_cream_id = $this->categoryFinder($mobile_cat);
        $gp_id = $this->categoryFinder($gp_cat);

        $super_admin_cat =   array_merge($mobile_cat_id, $ice_cream_id, $gp_id);
        // dd($super_admin_cat);
        if (backpack_user()->hasRole('Mobile')) {
            $this->crud->addClause('whereIn', 'category_id', $mobile_cat_id);
        }

        if (backpack_user()->hasRole('Polar')) {
            $this->crud->addClause('whereIn', 'category_id', $ice_cream_id);
        }

        if (backpack_user()->hasRole('GP')) {
            $this->crud->addClause('whereIn', 'category_id', $gp_id);
        }

        if (backpack_user()->hasRole('Super admin')) {
            $this->crud->addClause('whereIn', 'category_id', $super_admin_cat);
        }

        CRUD::column('category_id');
        // CRUD::column('user_id');
        CRUD::column('amount');
        CRUD::column('purpose');
        CRUD::column('created_at');
        $this->crud->addColumn([
            'name'     => 'created_at',
            'label'    => 'Created At',
            'type'     => 'closure',
            'function' => function ($entry) {
                return  $entry->created_at;
            }
        ]);


        /**
         * Columns can be defined using the fluent syntax or array syntax:
         * - CRUD::column('price')->type('number');
         * - CRUD::addColumn(['name' => 'price', 'type' => 'number']);
         */
    }

    /**
     * Define what happens when the Create operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-create
     * @return void
     */
    protected function setupCreateOperation()
    {
        CRUD::setValidation(ExpenseRequest::class);
        $this->crud->addField([
            'label' => "user_id",
            'name' => 'user_id',
            'type' => 'hidden',
            'value' => backpack_user()->id,
        ]);
        CRUD::field('category_id');
        CRUD::field('amount');
        CRUD::field('purpose');
        CRUD::field('created_at');

        /**
         * Fields can be defined using the fluent syntax or array syntax:
         * - CRUD::field('price')->type('number');
         * - CRUD::addField(['name' => 'price', 'type' => 'number']));
         */
    }

    /**
     * Define what happens when the Update operation is loaded.
     *
     * @see https://backpackforlaravel.com/docs/crud-operation-update
     * @return void
     */
    protected function setupUpdateOperation()
    {
        $this->setupCreateOperation();
    }
    public function categoryFinder( $categoryName) : array
    {

        $categoryId = Category::whereIn('category', $categoryName)->pluck('id')->toArray();
        $categoryChild  = Category::whereIn('parent_id', $categoryId)->pluck('id')->toArray();
        $catArray = array_merge($categoryId, $categoryChild);

        return $catArray;
    }
}
