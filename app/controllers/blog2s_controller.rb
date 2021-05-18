class Blog2sController < ApplicationController
  before_action :set_blog2, only: [:show, :edit, :update, :destroy]
    def index
      @blog2s = Blog2.all
    end
    def new
      @blog2 = Blog2.new
    end
    # 追記する。render :new が省略されている。
    def create
      @blog2 = Blog2.new(blog2_params)
      if params[:back]
        render :new
      else
        if @blog2.save
          redirect_to blog2s_path, notice: "ブログを作成しました！"
        else
          render :new
        end
      end
    end
    def show
    end
    def edit
    end
    def update
      if @blog2.update(blog2_params)
        redirect_to blog2s_path, notice: "ブログを編集しました！"
      else
        render :edit
      end
    end
    def destroy
      @blog2.destroy
      redirect_to blog2s_path, notice: "ブログを削除しました！"
    end
    def confirm
      @blog2 = Blog2.new(blog2_params)
      render :new if @blog2.invalid?
    end
    private
    def blog2_params
      params.require(:blog2).permit(:title, :content)
  end
  def set_blog2
    @blog2 = Blog2.find(params[:id])
end
end