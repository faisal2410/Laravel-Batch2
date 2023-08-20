<div class="container mx-auto  lg:px-44 my-12 ">
    <div class="grid my-8 card  bg-base-100 shadow-xl p-8 bg-base-100 shadow-xl grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-8">
        <div class="card-body">
            <h1 class="card-title">Verification Code</h1>

            <input id="code" type="text" placeholder="PIN Code" class="input input-bordered w-full" />
            <label class="label mt-1"></label>
            <button onclick="Verify()" class="btn  w-full btn-neutral">Next</button>

        </div>
    </div>
</div>


<script>
    async function Verify(){
        let code=document.getElementById('code').value;
        let email=sessionStorage.getItem('email');
        let res= await axios.get("/VerifyLogin/"+email+"/"+code);
        if(res.status===200){
            window.location.href="/";
        }
    }
</script>
