<div class="container mx-auto  lg:px-44 my-12 ">
    <div class="grid my-8 card  bg-base-100 shadow-xl p-8 bg-base-100 shadow-xl grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-8">
        <div class="card-body">
            <h1 class="card-title">Login</h1>

            <label class="label mt-1">User Email </label>
            <input id="email" type="text" placeholder="User Email" class="input input-bordered w-full" />
            <label class="label mt-1"></label>
            <button onclick="Login()" class="btn  w-full btn-neutral">Next</button>

        </div>
    </div>
</div>


<script>
    async function Login(){
        let email=document.getElementById('email').value;
        let res= await axios.get("/UserLogin/"+email);
        if(res.status===200){
            sessionStorage.setItem('email',email);
            window.location.href="/login-verify";
        }
    }
</script>
