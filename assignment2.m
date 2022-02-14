%generate a white background and a random black square 
x = randi(100,300);
y = randi(200);
square = ones(x,x,1);
square(:,:,1) = 0;
figure(1)
imshow(square)
title('Original Image');


%function to mirror the image using rotation transformation
[r,c] = size(square);
for i = 1:r
  for j=1:c
    mirrorSquare(i,j) = square(i, c-j+1);
    end
    
  end
  figure,imshow(mirrorSquare);
  title("Mirrored Image Vertical Axis");

%function to mirror the image using rotation transformation
[r,c] = size(square);
for i = 1:r
  for j=1:c
    flippedSquare(i,j) = square(r-i+1, j);
    end
    
  end
  figure,imshow(flippedSquare);
  title("Flipped Image Horizontal Axis");
  
%function to mirror the image using rotation transformation
[r,c] = size(square);
for i = 1:r
  for j=1:c
    rotateSquare(i,j) = square(j, c-i+1);
    end
    
  end
  figure,imshow(rotateSquare);
  title("Rotated Image 90 degress");


%transaltion idk what im doing here 
%identity matrix

matrix = [0 1 new_x, 1 0 new_y];
moved_matrix = [x, y , 1];
new_matrix = matrix* moved_matrix;


[orig_x, orig_y,z] = size(square); 

final_x = 800;                      
final_y = 800;


f
for i = 1 : size(final_img, 1)
    for j = 1 : size(final_square, 2)        
          new_x = square(i) + 5;
          new_y = square(j) + 5;

       

        final_square(i) = new_x;
        final_square(j) = new_y;

    end
end

imshow(final_square);


