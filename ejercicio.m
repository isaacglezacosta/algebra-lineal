close all; clearvars;
im = rand(8)
figure();
subplot(1, 2, 1)
imshow(im)
im = im > 0.5
subplot(1, 2, 2)
imshow(im)
