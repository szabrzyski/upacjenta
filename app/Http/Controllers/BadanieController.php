<?php

namespace App\Http\Controllers;

use App\Models\Badanie;
use App\Models\KategoriaBadan;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class BadanieController extends Controller
{
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $kategorieBadan = KategoriaBadan::all()->pluck('id')->toArray();

        $walidator = Validator::make($request->all(), [
            'nazwa' => 'required|string|unique:badania,nazwa',
            'kod_icd' => 'required|string',
            'czas_oczekiwania' => 'required|string',
            'skrocony_opis' => 'required|string',
            'opis' => 'required|string',
            'kategorie_badan' => [
                'array',
                Rule::in($kategorieBadan),
            ],
        ]);

        if ($walidator->fails()) {

            if (isset($walidator->failed()['nazwa']['Unique'])) {
                return response()->json("Badanie o takiej nazwie już istnieje", 409, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('nazwa')) {
                return response()->json("Nieprawidłowa nazwa badania", 400, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('kod_icd')) {
                return response()->json("Nieprawidłowy kod ICD", 400, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('czas_oczekiwania')) {
                return response()->json("Nieprawidłowy czas oczekiwania", 400, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('skrocony_opis')) {
                return response()->json("Nieprawidłowy skrócony opis", 400, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('opis')) {
                return response()->json("Nieprawidłowy opis", 400, [], JSON_UNESCAPED_UNICODE);
            } elseif ($walidator->errors()->has('kategorie_badan')) {
                return response()->json("Nieprawidłowe kategorie badań", 400, [], JSON_UNESCAPED_UNICODE);
            }

        }

        try {
            $badanie = Badanie::create($request->except(['kategorie_badan']));
            return response()->json($badanie, 201, [], JSON_UNESCAPED_UNICODE);

        } catch (Exception $wyjatek) {
            return response()->json("Wystąpił nieprzewidziany wyjątek", 500, [], JSON_UNESCAPED_UNICODE);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param int $badanieId
     * @return \Illuminate\Http\Response
     */
    public function show(int $badanieId)
    {
        $badanie = Badanie::where('id', $badanieId)->first();

        if ($badanie) {
            return response()->json($badanie, 200, [], JSON_UNESCAPED_UNICODE);
        } else {
            return response()->json("Nie odnaleziono takiego badania", 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int $badanieId
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, int $badanieId)
    {
        $badanie = Badanie::where('id', $badanieId)->first();
        $kategorieBadan = KategoriaBadan::all()->pluck('id')->toArray();
        if ($badanie) {

            $walidator = Validator::make($request->all(), [
                'nazwa' => 'required|string|unique:badania,nazwa',
                'kod_icd' => 'required|string',
                'czas_oczekiwania' => 'required|string',
                'skrocony_opis' => 'required|string',
                'opis' => 'required|string',
                'kategorie_badan' => [
                    'array',
                    Rule::in($kategorieBadan),
                ],
            ]);

            if ($walidator->fails()) {

                if (isset($walidator->failed()['nazwa']['Unique'])) {
                    return response()->json("Badanie o takiej nazwie już istnieje", 409, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('nazwa')) {
                    return response()->json("Nieprawidłowa nazwa badania", 400, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('kod_icd')) {
                    return response()->json("Nieprawidłowy kod ICD", 400, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('czas_oczekiwania')) {
                    return response()->json("Nieprawidłowy czas oczekiwania", 400, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('skrocony_opis')) {
                    return response()->json("Nieprawidłowy skrócony opis", 400, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('opis')) {
                    return response()->json("Nieprawidłowy opis", 400, [], JSON_UNESCAPED_UNICODE);
                } elseif ($walidator->errors()->has('kategorie_badan')) {
                    return response()->json("Nieprawidłowe kategorie badań", 400, [], JSON_UNESCAPED_UNICODE);
                }

            }

            $badanie->nazwa = $request->nazwa;
            $badanie->kod_icd = $request->kod_icd;
            $badanie->czas_oczekiwania = $request->czas_oczekiwania;
            $badanie->skrocony_opis = $request->skrocony_opis;
            $badanie->opis = $request->opis;

            if ($badanie->save()) {
                return response()->json("Badanie zostało zaktualizowana", 200, [], JSON_UNESCAPED_UNICODE);
            } else {
                return response()->json("Wystąpił błąd podczas aktualizacji badania", 500, [], JSON_UNESCAPED_UNICODE);
            }

        } else {
            return response()->json("Nie odnaleziono takiego badania", 404, [], JSON_UNESCAPED_UNICODE);
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int $badanieId
     * @return \Illuminate\Http\Response
     */
    public function destroy(int $badanieId)
    {
        $badanie = Badanie::where('id', $badanieId)->first();

        if ($badanie) {
            if ($badanie->delete()) {
                return response()->json("Badanie zostało usunięte", 200, [], JSON_UNESCAPED_UNICODE);
            } else {
                return response()->json("Wystąpił błąd podczas usuwania badania", 500, [], JSON_UNESCAPED_UNICODE);
            }

        } else {
            return response()->json("Nie odnaleziono takiego badania", 404, [], JSON_UNESCAPED_UNICODE);
        }

    }
}
