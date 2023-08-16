<div class="container mx-auto  lg:px-44 my-12 ">
      <h2 class="text-2xl text-center my-1">CHOOSE BRANDS</h2>
      <h2 class="text-md text-center my-1">Get your desired product from top brands</h2>

    <div id="Brand" class="grid my-8 grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-8">



    </div>
</div>



<script>
    BrandList();
    async function BrandList() {
        let Brand=$('#Brand');
        let res=await axios.get('/BrandList');
        res.data['data'].forEach((element,index) => {
            let item=`<a href="/productByBrand?id=${element['id']}" class="card grayscale hover:grayscale-0 bg-slate-100 items-center  p-4 shadow">
                        <img class="w-16" src="${element['brandImg']}"/>
                        <h2 class="text-md my-1">${element['brandName']}</h2>
                      </a>`
            Brand.append(item);
        });
    }
</script>
