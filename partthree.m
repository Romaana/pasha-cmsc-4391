% read and display an image
img_peach = imread('peach.jpeg');
imshow(img_peach)

% convert to grescale
grey_img = rgb2gray(img_peach);
imshow(grey_img)

%reducing greyscale and using floor to avoid decimals

levels = 5; %grey scale levels I chose
max_levels = 256; %total numbber of greyscale levels
threshGap = max_levels / levels; %dividing the total by desired level
thresholds = zeros(1, levels);
thresholds(levels) = max_levels-1; % 255
thresholds(1) = floor(threshGap);
for i = 2:levels-1 %can change i value for different result
    thresholds(i) = floor(thresholds(i-1) + threshGap);
end

grayGap = maxLevel / (levels - 1);
grayLevels = zeros(1, levels);
grayLevels(levels) = max_levels - 1;
for i = 2:levels-1 %can change i value for different result
    grayLevels(i) = floor(grayLevels(i-1) + grayGap);
end

new_img = grey_img;
[rows, cols] = size(grey_img);


for i = levels:-1:1
    new_img(grey_img < thresholds(i)) = grayLevels(i); 

    end
    

%display
figure(2); imshow(new_img);


