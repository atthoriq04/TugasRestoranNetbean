--
-- File generated with SQLiteStudio v3.2.1 on Sun Dec 8 10:15:44 2019
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Kategori
CREATE TABLE Kategori (id_kategori INTEGER PRIMARY KEY AUTOINCREMENT, nama_kategori VARCHAR (22));
INSERT INTO Kategori (id_kategori, nama_kategori) VALUES (1, 'Makanan');
INSERT INTO Kategori (id_kategori, nama_kategori) VALUES (2, 'Minuman');
INSERT INTO Kategori (id_kategori, nama_kategori) VALUES (3, 'Desert');

-- Table: Menu
CREATE TABLE Menu (Id_menu INTEGER PRIMARY KEY AUTOINCREMENT, Kategori_menu INTEGER REFERENCES Kategori (id_kategori) ON UPDATE NO ACTION, Nama_menu VARCHAR (25), Harga_menu INTEGER (8), Sisa_Stok INTEGER);
INSERT INTO Menu (Id_menu, Kategori_menu, Nama_menu, Harga_menu, Sisa_Stok) VALUES (1, 1, 'Bakso', 20000, 10);
INSERT INTO Menu (Id_menu, Kategori_menu, Nama_menu, Harga_menu, Sisa_Stok) VALUES (2, 2, 'Jus Jeruk', 10000, 0);
INSERT INTO Menu (Id_menu, Kategori_menu, Nama_menu, Harga_menu, Sisa_Stok) VALUES (3, 3, 'Puding', 6000, 30);

-- Table: Users
CREATE TABLE Users (id_user INTEGER PRIMARY KEY, Username VARCHAR, Alamat_users VARCHAR, Role_user INTEGER (2));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
