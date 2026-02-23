	// 特定vue集合
	var addBookFormVue = new Vue({
		// 也可以给一个类用
	        // el: '.addBookForm',
			el: '#addBookForm',
	        data: {
				table_tit:"添加书籍",
	            name:"Hello Vue",
				category: "",
				label: "",
				generalise: "Hello Vue",
				author: "Hello Vue",
				year: "Hello Vue",
				isRead: ""
	        }
	    });
	var showBookTableVue = new Vue({
		// 也可以给一个类用
	        // el: '.addBookForm',
			el: '#showBookTable',
	        data: {
				// table_tit:"添加书籍",
	            name:"这本书",
				// category: "",
				// label: "",
				// generalise: "Hello Vue",
				// author: "Hello Vue",
				// year: "Hello Vue",
				// isRead: ""
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
	
	  
		
		



