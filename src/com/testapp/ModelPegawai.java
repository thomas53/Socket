package com.testapp;

import java.io.Serializable;

public class ModelPegawai implements Serializable {
	private static final long serialVersionUID = 1L;
	private int idPegawai;
	private String Nama;
	private String Alamat;
	private String Jenkel;
	
	public int getIdPegawai() {
		return idPegawai;
	}
	public void setIdPegawai(int idPegawai) {
		this.idPegawai = idPegawai;
	}
	public String getNama() {
		return Nama;
	}
	public void setNama(String nama) {
		Nama = nama;
	}
	public String getAlamat() {
		return Alamat;
	}
	public void setAlamat(String alamat) {
		Alamat = alamat;
	}
	public String getJenkel() {
		return Jenkel;
	}
	public void setJenkel(String jenkel) {
		Jenkel = jenkel;
	}
}
