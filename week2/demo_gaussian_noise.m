%demo of gaussian noise

close all
figure(1)
I=128.*ones(600,800,'uint8');
subplot(221)
imshow(I)
title('Image with intensity value = 128');
subplot(222)
imhist(I)
title('Histogram of the left image');

pause
I1 = imnoise(I,'gaussian',0, (1/256)^2);
subplot(223)
imshow(I1)
title('image corrupted by gaussian noise with sigma=1');
subplot(224)
imhist(I1)
title('Histogram of the left image');

pause
figure(2)
I2 = imnoise(I,'gaussian',0,(10/256)^2);
subplot(221)
imshow(I2)
title('gaussian noise with sigma=10/256');
subplot(222)
imhist(I2)
title('Histogram of the left image');

pause
I3 = imnoise(I,'gaussian',0,(50/256)^2);
subplot(223)
imshow(I3)
title('gaussian noise with sigma=50/256');
subplot(224)
imhist(I3)
title('Histogram of the left image');
