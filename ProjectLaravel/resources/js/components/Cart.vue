<template>
 <div v-if="cart.length > 0" style="display:flex">
     <div class="col-10">
   <table>
    <tr v-for="(c) of cart" :key="c.id">
      <td><img :src="c.imageartpetitf" :alt="c.designation" width="50"></td>  
      <td>{{ c.designation }}</td>
      <td>{{ c.price }} TND </td>
      <td>- Quantité : {{ c.quantite }} </td>
       <td><button class="btn btn-dark" @click="plus(c.id)"> + </button></td>
        <td><button class="btn btn-danger" @click="minus(c.id)" v-if="c.quantite > 1"> - </button>
            <button class="btn btn-danger" @click="removeFromCart(c.id)" v-if="c.quantite <= 1"> X </button></td>
    </tr>
   </table>
    </div>
     <div class="col-10">
          <router-link to="/register" > <button class="btn btn-warning"> CHECKOUT </button> </router-link>
         <div>Total items : {{cart.length }}</div>
         <div>Total price  : {{total}}</div>
        <router-link to="/" > <button class="btn btn-success"> MORE </button> </router-link>     
        <button class="btn btn-secondary" @click="removeCart()"> CLEAR </button>
    </div>
  </div>
  <div v-else>
            <div class="error-template container">
              <h1>Oops!</h1>
              <h2>No Products Found</h2>
              <div class="error-details">Your cart is empty</div>
              <div class="error-actions">
                <a class="btn text-white">
                  <span class="glyphicon glyphicon-envelope"></span>
                  <router-link to="/"
                    >Take me to Products Page</router-link
                  >
                </a>
              </div>
            </div>
</div>
</template>

<script>
import axios from 'axios';
export default {
  name: "Cart",
  data() {
    return {
      cart: [],
      total:0,
      qte:0,
      Produits:[]
    };
  },
  methods: {
    removeFromCart(itemId) { 
      const cartItems = JSON.parse(localStorage.getItem("cart"));
      const index = cartItems.map((e)=> {return e.id }).indexOf(itemId);
      cartItems.splice(index, 1);
      localStorage.setItem("cart", JSON.stringify(cartItems));
      this.cart = JSON.parse(localStorage.getItem("cart"));
    },
     removeCart() { 
      localStorage.removeItem("cart");
      this.cart =[];
      this.total=0;
    },
     plus(itemId) { 
       const cartItems = JSON.parse(localStorage.getItem("cart"));  
       const index = cartItems.map((e)=> {return e.id }).indexOf(itemId);
       const itemC = cartItems.find(({ id }) => id === itemId);

      this.Produits.map((pro)=>{
      if(pro.id==itemC.id){
        if(itemC.quantite < pro.qtestock )
        {
                  this.source = { quantite : eval(itemC.quantite+1) };
                  const returnedTarget = Object.assign(itemC, this.source);
                  cartItems.splice(index,1,returnedTarget);
                  localStorage.setItem("cart", JSON.stringify(cartItems));
                  this.getCart();
        }          
        else
              alert("Quantité stock indisponible")
      }       
      });        
             
    },
     minus(itemId) { 
       const cartItems = JSON.parse(localStorage.getItem("cart"));  
       const index = cartItems.map((e)=> {return e.id }).indexOf(itemId);
       const itemC = cartItems.find(({ id }) => id === itemId);
       this.source = { quantite : eval(itemC.quantite-1) };
       const returnedTarget = Object.assign(itemC, this.source);
       cartItems.splice(index,1,returnedTarget);
       localStorage.setItem("cart", JSON.stringify(cartItems));
       this.getCart();
    },
    getCart() {
      if (!localStorage.getItem("cart")) {
        localStorage.setItem("cart", JSON.stringify([]));
      }
      this.cart = JSON.parse(localStorage.getItem("cart"));
      let tot=0;
      this.cart.map((ca)=>{tot= tot + ca.prixVente*ca.quantite})
      this.total=tot
    },
    getProduits(){
          let apiURL = 'http://localhost:8000/api/articles';
            axios.get(apiURL).then(res => {
                this.Produits = res.data;
            }).catch(error => {
                console.log(error)
            });
       },
  },
  beforeMount() {
    this.getCart();
    this.getProduits();
  }
};
</script>

<style>
.error-template {
  padding: 40px 15px;
  text-align: center;
}
.error-actions {
  margin-top: 15px;
  margin-bottom: 15px;
}
.error-actions .btn {
  margin-right: 10px;
}
</style>
