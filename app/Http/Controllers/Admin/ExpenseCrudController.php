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
                'Itel', 'Tecno', 'Marcel', 'Jio', 'Building Cost', 'House Cost'
            ];
        $ice_cream_cat = [
            'Polar', 'Lovello', 'Lovello Owner Cost', 'Polar Owner Cost'
        ];
        $gp_cat = [
            'GP Owner Cost', 'GP Discount ', 'Grameen Phone'
        ];

        $mobile_cat_id = Category::select('id')->whereIn('category', $mobile_cat)->pluck('id');
        $ice_cream_id = Category::select('id')->whereIn('category', $ice_cream_cat)->pluck('id');
        $gp_id = Category::select('id')->whereIn('category', $gp_cat)->pluck('id');


        if (backpack_user()->hasRole('Mobile')) {
            $this->crud->addClause('whereIn', 'category_id', $mobile_cat_id);
        }

        if (backpack_user()->hasRole('Polar')) {
            $this->crud->addClause('whereIn', 'category_id', $ice_cream_id);
        }

        if (backpack_user()->hasRole('GP')) {
            $this->crud->addClause('whereIn', 'category_id', $gp_id);
        }
        CRUD::column('category_id');
        CRUD::column('user_id');
        CRUD::column('amount');
        CRUD::column('purpose');
        CRUD::column('created_at');

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
}
