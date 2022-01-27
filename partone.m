% read and display an image
img_cat = imread('cat.jpeg');
imshow(img_cat)


%calculate the total number of pixels
size(img_cat)
size(img_cat,1) * size(img_cat,2)


%min pixels
minValue = min(img_cat(:))
	[row, column] = find(img_cat == minValue);
%max pixels
maxValue = max(img_cat(:))
	[row, column] = find(img_cat == maxValue);
% mean pixels
meanValue = mean(img_cat(:))
	[row, column] = find(img_cat == meanValue);
  
  
  
%Change the pixel values less than the mean to 0 and above the mean to 255

grey_img = rgb2gray(img_cat);
figure
imshow(grey_img)
image_change = zeros(size(grey_img));

for ii=1:size(grey_img,1)
  for jj=1:size(grey_img,2)
    pixel=grey_img(ii,jj);
    
    if pixel <meanValue
      new_pixel=0;
    elseif pixel>meanValue
      new_pixel=255;
      else
          new_pixel = pixel;
          
         end
         image_change(ii,jj)=new_pixel;
      end
  endfor
figure()
subplot(1,2,1)
imshow(grey_img,[])
title('original image')
subplot(1,2,2)
imshow(image_change,[])
title('changed image')
