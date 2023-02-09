<!-- This file is used to store sidebar items, starting with Backpack\Base 0.9.0 -->
<li class="nav-item"><a class="nav-link" href="{{ backpack_url('dashboard') }}"><i class="la la-home nav-icon"></i>
        {{ trans('backpack::base.dashboard') }}</a></li>

<li class="nav-item nav-dropdown">
    <a class="nav-link nav-dropdown-toggle" href="#"><i class="nav-icon la la-users"></i> Authentication</a>
    <ul class="nav-dropdown-items">
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('user') }}"><i class="nav-icon la la-user"></i>
                <span>Users</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('role') }}"><i
                    class="nav-icon la la-id-badge"></i> <span>Roles</span></a></li>
        <li class="nav-item"><a class="nav-link" href="{{ backpack_url('permission') }}"><i
                    class="nav-icon la la-key"></i> <span>Permissions</span></a></li>
    </ul>
</li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('category') }}'><i class='nav-icon la la-question'></i>
        Categories</a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('expense') }}'><i class='nav-icon la la-question'></i>
        Expenses</a></li>
<li class='nav-item'><a class='nav-link' href='{{ backpack_url('inventment') }}'><i class='nav-icon la la-question'></i>
        Investments</a></li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('profit') }}'><i class='nav-icon la la-question'></i>
        Profits</a></li>

<li class='nav-item'><a class='nav-link' href='{{ backpack_url('salary') }}'><i class='nav-icon la la-question'></i>
        Salaries</a></li>
<li class='nav-item'><a class='nav-link' href="{{ route('audit.log.index') }}"><i class='nav-icon la la-memory'></i>
        <span>Activity Log</span></a></li>
