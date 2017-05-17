class TestController < ApplicationController
    
    def test
        
         @view = Post.all
    end
    
    def lotto
        
    end
    def lottolist
    
        @lotto = Lotto.all
        
    end
    
    
    def getlotto
        
        @lotto = params[:lotto]
        
        @lottojpg = @lotto+".jpg"
        
        @lottonum = Lotto.new
        @lottonum.lotto = @lottojpg
        
        @lottonum.save
        
        redirect_to "/lottolist"
        
    end
    
    
    def delete
        
        @one_post = Post.find(params[:id])
        @one_post.destroy
        
        redirect_to "/list"
    end
    def edit
        
        @one_post = Post.find(params[:id])
    end
    
    def edit_2
        
        @one_post = Post.find(params[:id])
        @one_post.title = params[:title]
        @one_post.content = params[:content]
        @one_post.save
        
        redirect_to '/list'
        
        
    end
    def content
        
        @one_post = Post.find(params[:id])
     
        @one_post.save
        
    end
    
    def create
       
        @title = params[:title]
        @content = params[:content]
    
        @one_post = Post.new
        @one_post.title = @title
        @one_post.content = @content
        
        @one_post.save
        
       
        redirect_to "/list"
    end
    
    
    
    def list
        
        @view = Post.all
        
    end
    
end
