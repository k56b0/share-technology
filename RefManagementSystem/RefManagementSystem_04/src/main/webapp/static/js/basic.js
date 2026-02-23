// 特定vue集合
//Book
var addBookFormVue = new Vue({
		// 也可以给一个类用
	        // el: '.addBookForm',
			el: '#addBookForm',
	        data: {
				table_tit:"添加书籍",
	            name:"",
				category: "",
				label: "",
				generalise: "",
				author: "",
				year: "",
				isRead: ""
	        },
			methods: {
				addBook: function () {
					axios({
						method: "POST",
						url: "cart.do",
						params: {
							operate: 'cartInfo'
						},
						data:addBookFormVue.data
					})
					// .then(function (value) {
					// 	var cart = value.data ;
					// 	vue.cart = cart ;
					// })
					// .catch(function (reason) {  });
				}
			}



	    });
var showBookTableVue = new Vue({
		// 也可以给一个类用
	        // el: '.addBookForm',
			el: '#showBookTable',
	        data: {
	            name:"这本书",
				ok:true
	        },
			methods:{
					// 确定是否删除	 
				 confirmDEl:function(event){
					 if(confirm("是否删除"+this.name)) {
					     console.log("老板点了确定，表示要删");
					 }else{
					     console.log("老板点了确定，表示不删");
					 }
					 // `event` 是原生 DOM 事件
					       if (event) {
					         alert(event.target.tagName)
					       }
						 
				 }
				 
			}
	    });

//Link
var addLinkFormVue = new Vue({
	el: '#addLinkForm',
	data: {
		table_tit: "",
		name: "",
		category: "",
		label: "",
		generalise: "",
		link1: "",
		link2: "",
		ref: ""
	}
});
var showLinkTableVue = new Vue({
	el: '#showLinkTable',
	data: {
		name:"这本书",
		ok:true
	},
	methods:{
		// 确定是否删除
		confirmDEl:function(event){
			if(confirm("是否删除"+this.name)) {
				console.log("老板点了确定，表示要删");
			}else{
				console.log("老板点了确定，表示不删");
			}
			// `event` 是原生 DOM 事件
			if (event) {
				alert(event.target.tagName)
			}

		}

	}
});

//EasyText addEasyTextForm
var addEasyTextFormVue = new Vue({
	el: '#addEasyTextForm',
	data() {
		return {
				table_tit: "",
				name: "",
				category: "",
				label: "",
				generalise: "",
				link: "",
				works:"",
				personage:"",
				content:""
		}
	},
});
var showEasyTextTableVue = new Vue({
	el:'#showEasyTextTable',
	data(){
		return {
			name:"这本书",
			ok:true
		}
	},
	methods:{
		test1:function (){
			alert("fsfsf")
		},
		// showDetail:function (id,pageNum){
		// 	// 发送 POST 请求
		// 	axios(
		// 		{
		// 		method:'post',
		// 		url:"/easyTextHuntingMainView/showDetail",
		// 		params:{
		// 			id:id,
		// 			pageNum:pageNum
		// 				}
		// 		}
		// 		)
		// 		.then(function (value) {
		// 			console.log(value);
		// 		})
		// 		.catch(function (reason) {
		// 			console.log(reason);
		// 		});
		//
		// },

		// 确定是否删除
		confirmDEl:function(event){
			if(confirm("是否删除"+this.name)) {
				console.log("老板点了确定，表示要删");
			}else{
				console.log("老板点了确定，表示不删");
			}
			// `event` 是原生 DOM 事件
			if (event) {
				alert(event.target.tagName)
			}

		}

	}
});
	
	  
		
		



