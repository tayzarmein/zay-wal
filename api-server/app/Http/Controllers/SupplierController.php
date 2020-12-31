<?php

namespace App\Http\Controllers;

use App\Models\Supplier;
use Illuminate\Http\Request;

class SupplierController extends Controller
{
    public function CreateSupplier(Request $request)
    {
        $supplier = new Supplier();
        $supplier->name = $request->name;
        $supplier->phoneNumber = $request->phoneNumber;
        $supplier->save();

        return $supplier;
    }
}
