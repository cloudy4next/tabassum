<?php

namespace App\Http\Controllers\Admin;
use Illuminate\Database\Eloquent\Builder;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Expense;
use Carbon\Carbon;

class DashboardController extends Controller
{
    public function dashboard(Request $request)
    {

        // $monthlyExpenseMobile = 0;
        $monthlyExpenseGp= 0;
        $monthlyExpensepolar = 0;
        $monthlyExpenselovello = 0;


        // $authors = Expense::with('category')
        //     ->whereHas('category', function (Builder $query) {
        //             $query->where('category', 'like', 'GrammenPhone');
        //             })->whereMonth('created_at', date('m'))
        //     ->whereYear('created_at', date('Y'))
        //     ->pluck('amount');

        // dd($authors);
        $mobileCat = ['Itel','Tecno','Marcel'];
        $categoryIdMobile = Category::whereIn('category',$mobileCat)->where('parent_id','!=',NULL);
        dd( $mobileCat);
        $expenseMobile = Expense::whereMonth('created_at', date('m'))
        ->whereYear('created_at', date('Y'))
        ->pluck('amount');

        $monthlyExpenseMobile = $this->calculateeSum($expenseMobile);

        $totalCountProject = 1;

        return view('vendor.backpack.base.admin_dashboard',
        [ 'monthlyExpenseMobile' => $monthlyExpenseMobile,
        'totalCountProject' => $totalCountProject,
        ]);

    }


    public function myAccount(Request $request)
    {

        return view('backpack.base.my_account');

    }

    public function calculateeRoi($initInv, $returnInv,$costInv)
    {

        $roi = (($returnInv - $initInv) / $costInv) * 100;

        return $roi;
    }

    public function calculateeSum($modelData)
    {
        $total = 0;
        foreach ($modelData as $key ) {
            $total += $key;
            }

        return $total;
    }

}
