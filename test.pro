PRO test

files_in = file_search('*JPG', count=n_c)

out_file = UINT(READ_IMAGE(files_in[0]))
for I=1,n_c-1 DO BEGIN
	out_file = out_file + UINT(READ_IMAGE(files_in[I]))
	print,I
ENDFOR

out_file = out_file/(n_c-1)

;image = READ_IMAGE("blanco.jpg")
;image2 = READ_IMAGE("negro.jpg")
;image3 = READ_IMAGE("verde.jpg")

;img = UINT(image)
;img2 = UINT(image2)
;img3 = UINT(image3)
;avg = img + img2 + img3
;avg = avg/3
;b = 500
;b = img[1] + img2[1] + img3[1]

;print, b
;print, avg
plot_image, out_file

END
