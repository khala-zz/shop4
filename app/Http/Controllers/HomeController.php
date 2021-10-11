<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Setting;
use App\Models\Slider;
use App\Models\Product;
use App\Models\News;
use App\Models\Banner;
use Illuminate\Support\Facades\DB;



class HomeController extends Controller
{
   
    private $setting;
    private $slider;
    private $product;
    private $news;
    private $banner;

    public function __construct(Setting $setting,Slider $slider,Product $product, News $news,Banner $banner){
    	$this -> setting = $setting;
    	$this -> slider = $slider;
    	$this -> product =$product;
        $this -> news = $news;
        $this -> banner = $banner;
    
    }
    public function home(){
    	//get setting
    	$settings = $this -> setting -> select('setting_key','setting_value') -> where('is_active',1) ->whereNotIn('id',[6,7])->get();

        //get 2 banner
        $banners = $this -> banner -> select('title','link','image') -> where('is_active',1) ->whereIn('id',[1,2])->get();

        //get 1 banner
        $bannerOne = $this -> banner 
                        -> select('title','link','image')
                        -> where([
                        ['is_active',1],
                        ['id',3],]) -> first();

    	//get slider
    	$sliders = $this -> slider -> select('name','nametwo','namethree','namefour','image_name') -> where('is_active',1) -> get();

        //san pham mới về
        // dung toArray de xu ly cho lap 2 san pham 1 lan ngoai frontend
        $products_arrivals = $this -> product -> with('category') 
        -> where([
                ['is_active',1],
                ['new',1],
                ]) -> latest() -> get() -> toArray();

        //san pham noi that trong nha
        $products_home = $this -> product ->  select('id','image','title','price','new','discount','pro_total_rating','pro_total_number','category_id') -> where('category_id',1) -> get();

        //san pham noi that van phong
        $products_office = $this -> product ->  select('id','image','title','price','new','discount','pro_total_rating','pro_total_number','category_id') -> where('category_id',2) -> get();

         //san pham noi that anh sang
        $products_light = $this -> product ->  select('id','image','title','price','new','discount','pro_total_rating','pro_total_number','category_id') -> where('category_id',4) -> get();

        //get news latest 
        $news = $this -> news  -> select('id','image_name','title','description','cat_news_id') -> where('is_active',1) ->latest() ->  get();

        // count review
        $review_count = $this -> product -> withCount('reviews')->get();

       

        

    	return view('frontend.home.home',compact('settings','sliders','news','review_count','products_arrivals','products_home','products_office','products_light','banners','bannerOne'));
    }

    

    public function searchProducts(Request $request){

        
        
        //sap xếp
        if($request -> orderby){
            $orderBy = $request -> orderby;
        }
        else {
            $orderBy = 'created_at';
        }

        //get product 
        //dùng appends($request -> query()) để giử lại query tren url khi click qua trang khác
                
        $query = $this -> product -> with('category');

        $this->filterAndResponse($request, $query);
        //xu ly cho sap a-z,z-a
        if($orderBy == 'title_giam'){
            $query->orderBy('title', 'DESC');
        }
        elseif ($orderBy == 'title_tang') {
            $query->orderBy('title', 'ASC');
        }
        else{
            $query->orderBy($orderBy, 'DESC');
        }

        
        
        $products = $query-> where('is_active',1)  -> paginate(10) ->  appends($request -> query());

        //end get product
        $keyword = $request -> search_product;
        return view('frontend.product.search',compact('products','keyword'));

    }

    //fileter
    private function filterAndResponse($request, $query)
    {
        

        if($request->has('search_product') && $request->has('poscats') && $request -> search_product <> '' &&  $request -> poscats <> ''){
            
            
            $query -> where('category_id',$request -> poscats)
                   -> where(function ($query) use ($request) {
                            $query->where('title', "like", "%" . $request -> search_product . "%");
                            $query->orWhere('description', "like", "%" . $request-> search_product . "%");
                        }); 

        }
        if($request->has('search_product') && $request -> search_product <> ''){
             $query-> where('title', 'like', "%" . $request -> search_product . "%") -> orWhere('description', 'like', "%" . $request -> search_product . "%") ;
        }
        if($request->has('poscats') &&  $request -> poscats <> ''){

            $query -> where('category_id', $request -> poscats);
        }

        
    }
}
