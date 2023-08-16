<div class="bg-slate-100 lg:px-44 py-8">
<div id="carousel" class="carousel w-full">

</div>

<div id="indicator" class="flex justify-center w-full gap-2">

</div>
</div>


<script>

    SlideList();
   async function SlideList() {
       let carousel=$('#carousel');
       let indicator=$('#indicator');
       let res=await axios.get('/ListProductSlider');
       res.data['data'].forEach((element,index) => {
           let slide=`<div id="slide${index}" class="carousel-item relative w-full">
                        <div class="container hero">
                        <div class="grid grid-cols-1 hero-content md:grid-cols-1 lg:grid-cols-2">
                        <div>
                        <h1 class="text-4xl font-bold">${element['title']}</h1>
                        <p class="my-3">${element['short_des']}</p>
                        <h1 class="text-2xl my-3 font-bold">${element['price']}</h1>
                        <a href="/productDetails/${element['product_id']}" class="btn my-3 btn-sm btn-neutral">Buy Now</a>
                        </div>
                        <div>
                        <img src="${element['image']}"/>
                        </div>
                        </div>
                        </div>
                        </div>`

           let indicatorBtn=`<a href="#slide${index}" class="btn btn-circle btn-outline btn-neutral btn-sm">${index+1}</a>`
           carousel.append(slide);
           indicator.append(indicatorBtn);
       });
    }
</script>
