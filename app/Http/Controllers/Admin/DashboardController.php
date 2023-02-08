<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Database\Eloquent\Builder;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Expense;
use App\Models\Inventment;
use App\Models\Profit;
use Carbon\Carbon;
// use Illuminate\Support\Facades\DB;

class DashboardController extends Controller
{
    public function dashboard(Request $request)
    {
        // All expense start
        $mobileCat = ['Itel', 'Tecno', 'Marcel'];
        $monthlyExpenseMobile = $this->expenseMonthlyCal($mobileCat);
        $gpExpense = $this->expenseMonthlyCal(['GrameenPhone']);
        $polarExpense = $this->expenseMonthlyCal(['Polar']);
        $lovelloExpense = $this->expenseMonthlyCal(['Lovello']);
        // All expense ends
        // dd($gpExpense);

        //profit calculation starts
        $mobileProfit = $this->monthlyProfitCal($mobileCat);
        $gpProfit = $this->monthlyProfitCal(['GrameenPhone']);
        $lovelloProfit = $this->monthlyProfitCal(['Lovello']);
        $polarProfit = $this->monthlyProfitCal(['Polar']);
        //profit calculation ends



        //Investment Calculation starts
        $mobileNitInv = $this->monthlyInvestmentCal($mobileCat);
        $gpNitInv = $this->monthlyInvestmentCal(['GrameenPhone']);
        $lovelloNitInv = $this->monthlyInvestmentCal(['Lovello']);
        $polarNitInv = $this->monthlyInvestmentCal(['Polar']);



        $mobileRetInv = $mobileNitInv + $mobileProfit;
        $gpRetInv = $gpNitInv + $gpProfit;
        $lovelloRetInv = $lovelloNitInv + $lovelloProfit;
        $polarRetInv = $polarNitInv + $polarProfit;


        //Investment Calculation ends

        //monthly profit or loss start
        $mobile = $mobileProfit - $monthlyExpenseMobile; // if loss then
        $gp = $gpProfit - $gpExpense;
        $lovello = $lovelloProfit -  $lovelloExpense;
        $polar =  $polarProfit - $polarExpense;
        //monthly profit or loss end


        //Roi Calculation starts
        $mobileRoiYearly = $this->calculateRoi($mobileNitInv, $mobileRetInv, $monthlyExpenseMobile);
        $gpRoiYearly  = $this->calculateRoi($gpNitInv, $gpRetInv, $gpExpense);
        $lovelloRoiYearly  = $this->calculateRoi($lovelloNitInv, $lovelloRetInv, $lovelloExpense);
        $polarRoiYearly  = $this->calculateRoi($polarNitInv, $polarRetInv, $polarExpense);
        //Roi Calculation ends


        // $users = Expense::select('amount', 'created_at')
        //     ->get()
        //     ->groupBy(
        //         function ($date) {
        //             //return Carbon::parse($date->created_at)->format('Y'); // grouping by years
        //             return Carbon::parse($date->created_at)->format('m');
        //         }
        //     )->toArray();
        // // dd($users[10][0]['amount']);

        return view(
            'vendor.backpack.base.admin_dashboard',
            [
                'monthlyExpenseMobile' => $monthlyExpenseMobile,
                'gpExpense' => $gpExpense,
                'polarExpense' => $polarExpense,
                'lovelloExpense' => $lovelloExpense,
                'mobile' => $mobile,
                'gp' => $gp,
                'gpExpense' => $gpExpense,
                'lovello' => $lovello,
                'polar' => $polar,

            ]
        );
    }


    public function myAccount(Request $request)
    {

        return view('backpack.base.my_account');
    }

    public function calculateRoi($initInv, $returnInv, $costInv)
    {

        $roi = (($returnInv - $initInv) / $initInv) * 100;

        return $roi;
    }

    public function calculateSum($expenseItem)
    {
        $total = 0;
        foreach ($expenseItem as $key) {
            $total += $key;
        }

        return $total;
    }

    public function calculateProfit($expenseItem)
    {
        $total = 0;
        foreach ($expenseItem as $key) {
            $total += $key;
        }

        return $total;
    }

    public function expenseMonthlyCal($categoryItem)
    {

        $categoryId = Category::whereIn('category', $categoryItem)->pluck('id')->toArray();
        $categoryChild  = Category::whereIn('parent_id', $categoryId)->pluck('id')->toArray();
        $CatArray = array_merge($categoryId, $categoryChild); // merge category , child
        $expenseItem = Expense::whereIn('category_id', $CatArray)->whereMonth('created_at', date('m'))
            ->whereYear('created_at', date('Y'))
            ->pluck('amount');

        return $this->calculateSum($expenseItem);
    }
    public function monthlyProfitCal($data)
    {
        $categoryId = Category::whereIn('category', $data)->pluck('id')->toArray();
        $profitItem = Profit::whereIn('category_id', $categoryId)->whereMonth('created_at', date('m'))
            ->whereYear('created_at', date('Y'))
            ->pluck('amount');

        return $this->calculateSum($profitItem);
    }

    public function monthlyInvestmentCal($data)
    {
        $categoryId = Category::whereIn('category', $data)->pluck('id')->toArray();
        $investmentItem = Inventment::whereIn('category_id', $categoryId)
            ->whereYear('created_at', date('Y'))
            ->pluck('amount');

        return $this->calculateSum($investmentItem);
    }
}
