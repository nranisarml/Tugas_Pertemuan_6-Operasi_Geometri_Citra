a = imread ('NuranisaRamli.jpg');
gray_a = rgb2gray(a);
biner_a = imbinarize (gray_a);
b = imread ('alam.jpeg');
gray_b = rgb2gray(b);
biner_b = imbinarize (gray_b);

%Operasi Penjumlahan Citra
Penj_1 = imadd (b,a);
figure (1);
subplot(2,3,1), imshow(a);
title('Asli')
subplot(2,3,2), imshow(b);
title('Alam')
subplot(2,3,3), imshow(Penj_1);
title('Asli + Alam')

Penj_2 = imadd (gray_a,gray_b);
figure (1);
subplot(2,3,4), imshow(gray_a);
title('Keabuan')
subplot(2,3,5), imshow(gray_b);
title('Alam Abu')
subplot(2,3,6), imshow(Penj_2);
title('Keabuan + Alam Abu')

%Operasi Pengurangan Citra
Peng_1 = imsubtract (a,b);
figure (2);
subplot(2,3,1), imshow(a);
title('Asli')
subplot(2,3,2), imshow(b);
title('Alam')
subplot(2,3,3), imshow(Peng_1);
title('Asli - Alam')

Peng_2 = imsubtract (gray_a,gray_b);
figure (2);
subplot(2,3,4), imshow(gray_a);
title('Keabuan')
subplot(2,3,5), imshow(gray_b);
title('Alam Abu')
subplot(2,3,6), imshow(Peng_2);
title('Keabuan - Alam Abu')

%Operasi Perkalian Citra
Per_1 = immultiply (a,b);
figure (3);
subplot(2,3,1), imshow(a);
title('Asli')
subplot(2,3,2), imshow(b);
title('Alam')
subplot(2,3,3), imshow(Per_1);
title('Asli x Alam')

Per_2 = immultiply (gray_a,gray_b);
figure (3);
subplot(2,3,4), imshow(gray_a);
title('Keabuan')
subplot(2,3,5), imshow(gray_b);
title('Alam Abu')
subplot(2,3,6), imshow(Per_2);
title('Keabuan x Alam Abu')

%Operasi Pembagian Citra
Pem_1 = imdivide(a,b);
figure (4);
subplot(2,3,1), imshow(a);
title('Asli')
subplot(2,3,2), imshow(b);
title('Alam')
subplot(2,3,3), imshow(Pem_1);
title('Asli/Alam')

Pem_2 = imdivide (gray_a,gray_b);
figure (4);
subplot(2,3,4), imshow(gray_a);
title('Keabuan')
subplot(2,3,5), imshow(gray_b);
title('Alam Abu')
subplot(2,3,6), imshow(Pem_2);
title('Keabuan/Alam Abu')

%Operasi Logika
%AND/NAND
AandB = and (biner_a, biner_b);
%OR/NOR
AorB = or (biner_a, biner_b);
%XOR/XNOR
AxorB = xor (biner_a, biner_b);
%NOT
notA = not (biner_a);
notB = not (biner_b);
%Tampilkan Hasil Operasi Logika
figure (5);
subplot(2,3,1), imshow(AandB);
title('AND/NAND')
subplot(2,3,2), imshow(AorB);
title('OR/NOR')
subplot(2,3,3), imshow(AxorB);
title('XOR/XNOR')
subplot(2,3,4), imshow(notA);
title('NOT A')
subplot(2,3,5), imshow(notB);
title('NOT B')

%Operasi Penskalaan
[p l]= size(gray_a);
geserx=10;
gesery=20;
for i = 1:p
    for j = 1:l
        scale(2*i,2*j)=gray_a(i,j);
    end
end
figure(6)
subplot(1,2,1), imshow(gray_a); title('Citra Keabuan')
subplot(1,2,2), imshow(scale); title('Hasil Penskalaan')

%Operasi Refleksi
hor_1 = fliplr(gray_a);
ver_1 = flipud(hor_1);
hor_2 = fliplr(ver_1);
ver_2 = flipud(hor_2);
figure (7);
subplot(1,4,1), imshow(hor_1); title('Refleksi 1')
subplot(1,4,2), imshow(ver_1); title('Refleksi 2')
subplot(1,4,3), imshow(hor_2); title('Refleksi 3')
subplot(1,4,4), imshow(ver_2); title('Refleksi 4')

