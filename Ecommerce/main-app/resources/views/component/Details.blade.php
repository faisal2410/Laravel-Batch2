<div class="container mx-auto  lg:px-44 my-12 ">

         <div class="grid my-8 card p-8 bg-base-100 shadow-xl grid-cols-2 md:grid-cols-2 lg:grid-cols-2 gap-8">

             <div>
                 <img id="img1" class="w-full" src=""><br/>
                 <div class="grid my-8 grid-cols-3 md:grid-cols-3 lg:grid-cols-3 gap-8">
                     <img id="img2" class="" src="">
                     <img id="img3" class="" src="">
                     <img id="img4" class="" src="">
                 </div>
             </div>

             <div>
                 <h1 class="text-xl" id="title"></h1>
                 <p id="des"></p>


                 <input id="product_id" type="number" placeholder="product_id" class="input hidden  input-bordered w-full max-w-xs" />

                 <label class="label mt-1">Color </label>
                 <select id="color" class="select select-bordered w-full max-w-xs">

                 </select>

                 <label class="label mt-1">Size </label>
                 <select id="size" class="select select-bordered w-full max-w-xs">

                 </select>

                 <label class="label mt-1">Quantity </label>
                 <input id="qty" type="number" placeholder="Quantity" class="input input-bordered w-full max-w-xs" />
                 <label class="label mt-1"></label>
                 <button onclick="AddCart()" class="btn  btn-neutral">Add To Cart</button>

             </div>
         </div>


</div>



<script>
    const urlParams = new URLSearchParams(window.location.search);
    const id = urlParams.get('id');


    getDetails();
    async function getDetails() {
        let res= await axios.get(`/ProductDetailsById/${id}`);
        let details= res.data['data'][0];
        document.getElementById('product_id').value=details['product']['id']
        document.getElementById('img1').src=details['img1']
        document.getElementById('img2').src=details['img2']
        document.getElementById('img3').src=details['img3']
        document.getElementById('img4').src=details['img4']
        document.getElementById('title').innerText=details['product']['title']
        document.getElementById('des').innerText=details['des'];

        colorDropDown(details['color']);
        sizeDropDown(details['size']);

    }



    function colorDropDown(color) {
        const colorArray = color.split(",");
        let colorList=$("#color");
        colorList.empty();
        let emptyItem=`<option value="">Select Color</option>`;
        colorList.append(emptyItem);
        colorArray.forEach((item,i)=>{
                let each=`<option value="${item}">${item}</option>`;
                colorList.append(each)
        })
    }


    function sizeDropDown(size) {
        const sizeArray = size.split(",");
        let sizeList=$("#size");
        sizeList.empty();
        let emptyItem=`<option value="">Select Size</option>`;
        sizeList.append(emptyItem);
        sizeArray.forEach((item,i)=>{
            let each=`<option value="${item}">${item}</option>`;
            sizeList.append(each)
        })
    }



   async function AddCart() {

        let product_id=document.getElementById('product_id').value;
        let color=document.getElementById('color').value;
        let size=document.getElementById('size').value;
        let qty=document.getElementById('qty').value;

        let Data={
            "product_id":product_id,
            "color":color,
            "size":size,
            "qty":qty
        }

       try {
           let res=await axios.post("/CreateCartList",Data);
       }
       catch (e) {
           window.location.hre="/login"
       }

    }


</script>
