<?php

namespace App\Http\Controllers;

use App\Models\KategoriaBadan;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class KategoriaBadanController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $walidator = Validator::make($request->all(), [
            'nazwa' => 'required|string|unique:kategorie_badan,nazwa',
        ]);

        if ($walidator->fails()) {

            if (isset($walidator->failed()['nazwa']['Unique'])) {
                return response()->json("Kategoria o takiej nazwie już istnieje", 409, [], JSON_UNESCAPED_UNICODE);
            } else {
                return response()->json("Nieprawidłowa nazwa kategorii", 400, [], JSON_UNESCAPED_UNICODE);
            }

        }

        try {
            $kategoriaBadan = KategoriaBadan::create($request->all());
            return response()->json($kategoriaBadan, 201, [], JSON_UNESCAPED_UNICODE);

        } catch (Exception $wyjatek) {
            return response()->json("Wystąpił nieprzewidziany wyjątek", 500, [], JSON_UNESCAPED_UNICODE);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param int $kategoriaBadanId
     * @return \Illuminate\Http\Response
     */
    public function show(int $kategoriaBadanId)
    {
        $kategoriaBadan = KategoriaBadan::where('id', $kategoriaBadanId)->first();

        if ($kategoriaBadan) {
            return response()->json($kategoriaBadan, 200, [], JSON_UNESCAPED_UNICODE);
        } else {
            return response()->json("Nie odnaleziono takiej kategorii", 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int $kategoriaBadanId
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, int $kategoriaBadanId)
    {
        $kategoriaBadan = KategoriaBadan::where('id', $kategoriaBadanId)->first();

        if ($kategoriaBadan) {

            $walidator = Validator::make($request->all(), [
                'nazwa' => 'required|string|unique:kategorie_badan,nazwa,' . $kategoriaBadanId,
            ]);

            if ($walidator->fails()) {

                if (isset($walidator->failed()['nazwa']['Unique'])) {
                    return response()->json("Kategoria o takiej nazwie już istnieje", 409, [], JSON_UNESCAPED_UNICODE);
                } else {
                    return response()->json("Nieprawidłowa nazwa kategorii", 400, [], JSON_UNESCAPED_UNICODE);
                }

            }

            $kategoriaBadan->nazwa = $request->nazwa;
            if ($kategoriaBadan->save()) {
                return response()->json("Kategoria została zaktualizowana", 200, [], JSON_UNESCAPED_UNICODE);
            } else {
                return response()->json("Wystąpił błąd podczas aktualizacji kategorii", 500, [], JSON_UNESCAPED_UNICODE);
            }

        } else {
            return response()->json("Nie odnaleziono takiej kategorii", 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $kategoriaBadanId
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $kategoriaBadanId)
    {
        $kategoriaBadan = KategoriaBadan::where('id', $kategoriaBadanId)->first();

        if ($kategoriaBadan) {
            if ($kategoriaBadan->delete()) {
                return response()->json("Kategoria została usunięta", 200, [], JSON_UNESCAPED_UNICODE);
            } else {
                return response()->json("Wystąpił błąd podczas usuwania kategorii", 500, [], JSON_UNESCAPED_UNICODE);
            }

        } else {
            return response()->json("Nie odnaleziono takiej kategorii", 404, [], JSON_UNESCAPED_UNICODE);
        }

    }

    /**
     * Zwraca listę badań dla wskazanej kategorii
     *
     * @param int $kategoriaBadanId
     * @return \Illuminate\Http\Response
     */
    public function badania(int $kategoriaBadanId)
    {
        $kategoriaBadan = KategoriaBadan::where('id', $kategoriaBadanId)->first();

        if ($kategoriaBadan) {
            return response()->json($kategoriaBadan->badania, 200, [], JSON_UNESCAPED_UNICODE);
        } else {
            return response()->json("Nie odnaleziono takiej kategorii", 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

}
