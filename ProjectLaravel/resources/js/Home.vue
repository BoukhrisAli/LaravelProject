<template>
<nav class="navbar navbar-dark bg-primary justify-content-between flex-nowrap flex-row">
  <router-link class="nav-link navbar-brandpr-3" to="/cart"><img alt="" width="50" src="https://lausannefoxes.ch/wp-content/uploads/2021/06/shopping-cart-icon-400x400.png">
{{CartLength}} </router-link>
</nav>    
    <div class="row">
        <div class="col-md-12" style="display:flex;flex-wrap:wrap;justify-content:center">
          <div class="card" style="width: 18rem;margin:12px" v-for="prod in Produits" :key="prod.id">
            <img class="card-img-top" :src="prod.imageartpetitf" :alt="prod.designation" width="70">
            <div class="card-body">
                <h5 class="card-title">{{ prod.designation }}</h5>
                <p class="card-text">{{ prod.marque }}</p>
            </div>
            <div style="text-align:center">
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Prix : {{ prod.prixVente }} TND</li>
                </ul>
                <button class="btn btn-warning" @click="addToCart(prod.id)" v-if="prod.qtestock>1">Add to Cart</button>
                <button class="btn btn-default" v-if="prod.qtestock<=1">OUT OF SOLD</button>
            </div>
          </div>  
        </div>
    </div>
</template>

<script>
    import axios from "axios";

    export default {
        data() {
            return {
                Produits: [],
                CartLength:0,
                source:{}
            }
        },
        created() {
            let apiURL = 'http://localhost:8000/api/articles';
            axios.get(apiURL).then(res => {
                this.Produits = res.data;
            }).catch(error => {
                console.log(error)
            });
        },
        methods:{
             addToCart(itemId) {
                    const item = this.Produits.find(({ id }) => id === itemId);
                    if (!localStorage.getItem("cart")) {
                        localStorage.setItem("cart", JSON.stringify([]));
                    }
                    const cartItems = JSON.parse(localStorage.getItem("cart"));
                    let index=this.checkProduct(itemId)
                    if(index == -1) {
                        this.source = { quantite : 1 }
                        /*
                        La méthode Object.assign() est utilisée afin de copier les valeurs de toutes les propriétés directes (non héritées)
                        d'un objet qui sont énumérables sur un autre objet cible. Cette méthode renvoie l'objet cible.
                        */
                        const returnedTarget = Object.assign(item, this.source);
                        cartItems.push(returnedTarget);
                    }
                    else 
                    {
                        const itemC = cartItems.find(({ id }) => id === itemId);
                        this.source = { quantite : eval(itemC.quantite+1) };
                        const returnedTarget = Object.assign(itemC, this.source);
                        cartItems.splice(index,1,returnedTarget)
                    }  
                    
                    localStorage.setItem("cart", JSON.stringify(cartItems));
                    this.CartLength=JSON.parse(localStorage.getItem("cart")).length; 
                  },
             checkProduct(itemId){
                 const index = JSON.parse(localStorage.getItem("cart")).map((e)=> {return e.id }).indexOf(itemId);
                 return index;
             }     
        },
        mounted() {
             if (localStorage.getItem("cart")) {
                 this.CartLength=JSON.parse(localStorage.getItem("cart")).length; 
             }  
        }
    }
</script>
