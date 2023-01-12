class BlogarticleController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    render json: Blogarticle.all
  end
  def show
    v = Blogarticle.find(params[:id])
    render json: v
 end
 def create
  v = !params[:blogtitle].empty?
  if (v)
    p=Blogarticle.create(
      'blogtitle': params[:blogtitle],
      'blogcontent': params[:blogcontent],
      'blogimglink': params[:blogimglink]
      )
    puts p
    render json: "Data Added"
   else
    render json: "Data not added"
  end
end

def update
  p=Blogarticle.find(params[:id].to_i)
  p.update(
    'blogtitle': params[:blogtitle],
    'blogcontent': params[:blogcontent],
    'blogimglink': params[:blogimglink]
  )
  render json: "Data Updated"
end

def destroy
  p=Blogarticle.find(params[:id].to_i)
  p.destroy
  render json: "Data Deleted"
end
end
