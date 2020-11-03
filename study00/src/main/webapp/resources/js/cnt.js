console.log("cnt module 확인");
var cntService = (function(){

	function add(cnt, callback, error){
		console.log("reply.........");
		
		$.ajax({
			type:'post',
			url:'/cnt/new',
			data :JSON.stringify(cnt),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr){
				if(callback){
					 callback(result); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
		
	}
	
	function addCos(cnt, callback, error){
		console.log("reply.........");
		
		$.ajax({
			type:'post',
			url:'/cnt/register',
			data :JSON.stringify(cnt),
			contentType: "application/json; charset=utf-8",
			success: function(result, status, xhr){
				if(callback){
					 callback(result); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		})
		
	}
	
	
	function getList(param, callback, error){
		var cno = param.cno; 
		var page = param.page || 1;
		$.getJSON("/cnt/pages/" + cno +"/" + page +".json",
			function(data){
			if(callback){
				callback(data);
			}
		}).fail(function(xhr, status, err){
			if(error){
				error();
			}
		});
	}
	/*function remove(cosNo, callback, error){
		$.ajax({
			type: 'delete',
			url: '/cnt/'+ cosNo,
			data :JSON.stringify({cosNo:cosNo}),
			contentType: "application/json; charset=utf-8",
			success:function(deleteResult, status, xhr){
				if(callback){
					 callback(deleteResult); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
		
	}*/
	function remove(cno, callback, error){
		$.ajax({
			type: 'delete',
			url: '/cnt/'+ cno,
			data :JSON.stringify({cno:cno}),
			contentType: "application/json; charset=utf-8",
			success:function(deleteResult, status, xhr){
				if(callback){
					 callback(deleteResult); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
		
	}
/*function remove(cno, cosNo, cntId, callback, error){
		
		$.ajax({
			type : 'delete',
			url : '/replies/' + cno,
			data: JSON.stringify({cno:cno, cosNo:cosNo, cntId:cntId}),
			contentType:"application/json; charset=utf-8",
			success : function(deleteResult, status, xhr){
				if(callback){
					callback(deleteResult);
				}
			},
			error :function(xhr, status, er){
				if(error){
					error(er)
				}
			}
			
		});
		
	}*/

/*
	function update(cnt, callback, error){
		$.ajax({
			type: 'put',
			url: '/cnt/'+cnt.cno,
			data :JSON.stringify(cnt),
			contentType: "application/json; charset=utf-8",
			success:function(result, status, xhr){
				if(callback){
					 callback(result); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
		
	}
	*/
	
	function update(cntId,cosNo,cno, callback, error){
		$.ajax({
			type: 'put',
			url: '/cnt/'+cno,
			data :JSON.stringify({cntId:cntId,cosNo:cosNo,cno:cno}),
			contentType: "application/json; charset=utf-8",
			success:function(result, status, xhr){
				if(callback){
					 callback(result); 
				}
			},
			error:function(xhr, status, er){
				if(error){
					error(er);
				}
			}
		});
		
	}
	
	function get(cno, callback, error){
		
		$.get("/cnt/" + cno + ".json", function(result){
			
			if(callback){
				callback(result);
			}
		}).fail(function(xhr, status, err){
				if(error){
					error(er);
				}
		});
	
	}
	
	
	return {
		add : add,
		getList : getList,
		remove : remove,
		update : update,
		get : get,
		addCos : addCos
		
	};
	})();
