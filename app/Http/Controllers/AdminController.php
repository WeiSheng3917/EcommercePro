<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Category;
use App\Models\Product;
use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use PDF;
use Notification;
use App\Notifications\SendEmailNotification;

class AdminController extends Controller
{
    public function view_category()
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $data = Category::all();

            return view('admin.category', compact('data'));
        }
        else {
            return redirect('login');
        }
    }

    public function add_category(Request $request)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $data = new Category;
            $data->category_name = $request->category;
            $data->save();

            return redirect()->back()->with('message', 'Category Added Successfully');
        }
        else {
            return redirect('login');
        }
    }

    public function delete_category($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $data = Category::find($id);
            $data->delete();

            return redirect()->back()->with('message', 'Category Deleted Successfully');
        }
        else {
            return redirect('login');
        }
    }

    public function view_product()
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $category = Category::all();

            return view('admin.product', compact('category'));
        }
        else {
            return redirect('login');
        }
    }

    public function add_product(Request $request)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $product = new Product;
            $product->title = $request->title;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->quantity = $request->quantity;
            $product->discount_price = $request->dis_price;
            $product->category = $request->category;
            
            $image = $request->image;
            $imagename = time() . '.' . $image->getClientOriginalExtension();

            $request->image->move('product', $imagename);
            $product->image = $imagename;
            $product->save();

            return redirect()->back()->with('message', 'Product Added Successfully');
        }
        else {
            return redirect('login');
        }
    }

    public function show_product()
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $product = Product::all();

            return view('admin.show_product', compact('product'));
        }
        else {
            return redirect('login');
        }
    }

    public function delete_product($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $data = Product::find($id);
            $data->delete();

            return redirect()->back()->with('message', 'Product Deleted Successfully');
        }
        else {
            return redirect('login');
        }
    }

    public function update_product($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $product = Product::find($id);
            $category = Category::all();

            return view('admin.update_product', compact('product', 'category'));
        }
        else {
            return redirect('login');
        }
    }

    public function update_product_confirm(Request $request, $id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $product = Product::find($id);
            $product->title = $request->title;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->discount_price = $request->dis_price;
            $product->category = $request->category;
            $product->quantity = $request->quantity;

            $image = $request->image;

            if ($image) {
                $imagename = time() . '.' . $image->getClientOriginalExtension();

                $request->image->move('product', $imagename);
                $product->image = $imagename;
            }

            $product->save();

            return redirect()->back()->with('message', 'Product Updated Successfully');
        }
        else {
            return redirect('login');
        }
    }

    public function order()
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $order = Order::all();

            return view('admin.order', compact('order'));
        }
        else {
            return redirect('login');
        }
    }

    public function delivered($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $order = Order::find($id);
            $order->delivery_status = 'delivered';
            $order->payment_status = 'paid';
            $order->save();

            return redirect()->back();
        }
        else {
            return redirect('login');
        }
    }

    public function print_pdf($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $order = Order::find($id);
            $pdf = PDF::loadView('admin.pdf', compact('order'));

            return $pdf->download('order_details.pdf');
        }
        else {
            return redirect('login');
        }
    }

    public function send_email($id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $order = Order::find($id);

            return view('admin.email_info', compact('order'));
        }
        else {
            return redirect('login');
        }
    }

    public function send_user_email(Request $request, $id)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $order = Order::find($id);

            $details = [
                'greeting' => $request->greeting,
                'firstline' => $request->firstline,
                'body' => $request->body,
                'button' => $request->button,
                'url' => $request->url,
                'lastline' => $request->lastline,
            ];

            Notification::send($order, new SendEmailNotification($details));

            return redirect()->back();
        }
        else {
            return redirect('login');
        }
    }

    public function searchdata(Request $request)
    {
        if (Auth::id() && (Auth::user()->usertype == 1)) { // self-modification
            $searchText = $request->search;
            $order = Order::where('name', 'LIKE', "%$searchText%")
                ->orWhere('phone', 'LIKE', "%$searchText%")
                ->orWhere('product_title', 'LIKE', "%$searchText%")
                ->get();

            return view('admin.order', compact('order'));
        }
        else {
            return redirect('login');
        }
    }
}
