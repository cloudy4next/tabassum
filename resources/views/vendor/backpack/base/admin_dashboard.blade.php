@extends(backpack_view('blank'))
@push('after_styles')
    <style>
        .btn {
            position: absolute;
            right: 3%;
            bottom: 3%;
        }
    </style>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet" />
@endpush
@section('content')
    <div class="">
        <div class="row mt-4">
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center bolded">Monthly Expense Mobile</h4>
                        <p class="card-text
                            text-center">{{ $monthlyExpenseMobile }} BDT</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center">
                            Monthly Expense GrammenPone
                        </h4>
                        <p class="card-text text-center">{{ $gpExpense }} BDT</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class=" card text-white bg-dark mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center">Monthly Expense Polar</h4>
                        <p class="card-text text-center">{{ $polarExpense }} BDT</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        {{-- <h4 class="card-title text-center">Monthly Expense Lavello</h4> --}}
                        <h4 class="card-title text-center bolded">Monthly Expense Lavello</h4>

                        <p class="card-text text-center">{{ $lovelloExpense }} BDT</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mt-4">
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-danger mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center bolded">Monthly Profit Mobile </h4>
                        <p class="card-text
                            text-center">{{ $mobile }} BDT</p>
                    </div>
                </div>
            </div>

            <!-- /.col-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-primary mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center">
                            Monthly Profit GrammenPone
                        </h4>
                        <p class="card-text text-center">{{ $gp }}</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-dark mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center">Monthly Profit Polar</h4>
                        <p class="card-text text-center">{{ $polar }} BDT</p>
                    </div>
                </div>
            </div>

            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-info mb-3" style="max-width: 18rem;">
                    <div class="card-body">
                        <h4 class="card-title text-center">Monthly Profit Lavello</h4>
                        <p class="card-text text-center">{{ $lovello }} BDT</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="card">
            <div class="card-header border-0">
                <div class="d-flex justify-content-between">
                    <h3 class="card-title"><span style="color:red">Expense</span> <small>VS</small> <span
                            style="color:blue">Profit</span>
                </div>
            </div>
            <div class="card-body">

                <div class="position-relative mb-4">
                    <canvas id="visitors-chart" height="200"></canvas>
                </div>
            </div>
        </div>

    </div>
    </div>
@endsection

@push('after_scripts')
    <script src="{{ asset('assets/js/chart.js/Chart.min.js') }}"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="{{ asset('assets/js/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    <script src="{{ asset('assets/js/dashboard3.js') }}"></script>
@endpush
