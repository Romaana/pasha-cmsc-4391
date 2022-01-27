% read and display an image
img_arthur = imread('arthur.jpeg');
size(img_arthur)
% shrink image by using nearest neighbour interpolation

shrink_img = imresize(img_arthur, 0.2,'nearest');
%reversing the resize
undo_shrink = imresize(shrink_img , 5, 'nearest');
%display
size(shrink_img)
size(undo_shrink)
figure()
subplot(1,2,1)
imshow(img_arthur,[])
title('original image')
subplot(1,2,2)
imshow(shrink_img,[])
title('shrinked image')


% shrink image by using bilinear interpolation

increase_img = imresize(img_arthur , 5, 'bilinear');
%reversing the resize
undo_increase = imresize(increase_img , .2, 'bilinear');

size(increase_img)
size(undo_increase)

%display images
figure()
subplot(1,2,1)
imshow(img_arthur,[])
title('original image')
subplot(1,2,2)
imshow(increase_img,[])
title('increased image')


% double the size image by using cubic interpolation

double_img = imresize(img_arthur , 2, 'bicubic');
%reverse the resize
undo_double = imresize(double_img , .5, 'bicubic');
size(double_img)
size(undo_double)

%display images
figure()
subplot(1,2,1)
imshow(img_arthur,[])
title('original image')
subplot(1,2,2)
imshow(double_img,[])
title('double image')

