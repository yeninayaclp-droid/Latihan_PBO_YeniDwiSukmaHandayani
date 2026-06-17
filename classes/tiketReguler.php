<?php

require_once 'Tiket.php';

class TiketRegular extends Tiket
{
    protected $tipeAudio;
    protected $lokasiBaris;

    public function __construct(
        $id_tiket,
        $nama_film,
        $jadwal_tayang,
        $jumlah_kursi,
        $hargaDasarTiket,
        $tipeAudio,
        $lokasiBaris
    ) {
        parent::__construct(
            $id_tiket,
            $nama_film,
            $jadwal_tayang,
            $jumlah_kursi,
            $hargaDasarTiket
        );

        $this->tipeAudio = $tipeAudio;
        $this->lokasiBaris = $lokasiBaris;
    }

    public function hitungTotalHarga()
    {
        return 0;
    }

    public function tampilkanInfoFasilitas()
    {
        return "";
    }
}