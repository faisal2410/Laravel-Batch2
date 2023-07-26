<div class="navbar relative z-50 sticky top-0 lg:px-44 shadow bg-base-100">
  <div class="flex-1">
    <a class="btn btn-ghost normal-case text-xl">
      <img class="w-20" src="{{asset('images/logo.png')}}"/>
    </a>
  </div>
  <div class="flex-none">
    <ul class="menu menu-horizontal px-1">
      <li><a>HOME</a></li>
      <li>
        <details>
          <summary>
            PRODUCT
          </summary>
          <ul class="p-2 bg-base-100">
            <li><a>Mackbook Laptop</a></li>
            <li><a>Apple Mac Mini</a></li>
            <li><a>Apple i Mac</a></li>
            <li><a>Apple i Phone</a></li>
          </ul>
        </details>
      </li>
      <li><a>OFFER</a></li>

      <li>
        <a onclick="search_modal.showModal()">
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
        <path stroke-linecap="round" stroke-linejoin="round" d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
      </svg>
        SEARCH
      </a>
      </li>


      <li>
        <a onclick="cart_modal.showModal()">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
        <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 10.5V6a3.75 3.75 0 10-7.5 0v4.5m11.356-1.993l1.263 12c.07.665-.45 1.243-1.119 1.243H4.25a1.125 1.125 0 01-1.12-1.243l1.264-12A1.125 1.125 0 015.513 7.5h12.974c.576 0 1.059.435 1.119 1.007zM8.625 10.5a.375.375 0 11-.75 0 .375.375 0 01.75 0zm7.5 0a.375.375 0 11-.75 0 .375.375 0 01.75 0z" />
      </svg>CART
      </a>
      </li>


      <li><a onclick="account_modal.showModal()">
      <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5">
      <path stroke-linecap="round" stroke-linejoin="round" d="M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z" />
      </svg>

      ACCOUNT</a>
      </li>



    </ul>
  </div>
</div>
