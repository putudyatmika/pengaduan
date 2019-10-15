<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;

class Percakapan extends Controller
{
    //
    public function lihatPercakapan(){
        $dataPesan = DB::table('pengaduanwebchat')
        ->where([
            'id_user' => Auth()->user()->id,
        ])->get();

        return view('percakapan.percakapan')->with('pesan', $dataPesan);
    }

    public function viewTambahPesan(){
        return view('percakapan.tambahpesan');
    }

    public function tambahPesan(Request $request){
        $id_user = Auth()->user()->id;
        $nama_user = Auth()->user()->name;
        $isikomentar = $request->isi_pesan;

        $statusPesan = DB::table('pengaduanwebchat')
            ->insert([
                'id_user' => $id_user,
                'nama_user' => $nama_user,
                'isi_pesan' => $isikomentar,
                'last_edited_by' => $nama_user,
                'created_at' => now(),
                'updated_at' => now(),
            ]);
        
        $dataPesan = DB::table('pengaduanwebchat')
                        ->where([
                            'id_user' => Auth()->user()->id,
                        ])->get();
        
        if($statusPesan){
            return redirect()->route('percakapan.lihatpercakapan')
                                ->with('pesan',$dataPesan)
                                ->with('pesan_berhasil_tersimpan','Pesan Anda Berhasil Terkirim');
        }else{
            return redirect()->route('percakapan.lihatpercakapan')
                                ->with('pesan',$dataPesan)
                                ->with('pesan_gagal_tersimpan','Pesan Anda Gagal Terkirim');
        }
    }
}
