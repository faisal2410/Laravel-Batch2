<div class="container mx-auto  lg:px-44 my-12 ">
      <h2 class="text-2xl text-center my-1">FEATURED CATEGORIES</h2>
      <h2 class="text-md text-center my-1">Get your desired product from featured category</h2>

     <div id="Category" class="grid my-8 grid-cols-2 md:grid-cols-3 lg:grid-cols-5 gap-8">

     </div>

</div>


<script>
    CategoryList();
    async function CategoryList() {
        let Category=$('#Category');
        let res=await axios.get('/CategoryList');
        res.data['data'].forEach((element,index) => {
            let item=`<a href="/productByCategory?id=${element['id']}" class="card grayscale hover:grayscale-0 bg-slate-100 items-center  p-6 shadow">
                        <img class="w-16" src="${element['categoryImg']}"/>
                        <h2 class="text-md my-2">${element['categoryName']}</h2>
                      </a>`
            Category.append(item);
        });
    }
</script>
