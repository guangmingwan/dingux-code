	.file	1 "h264idct.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.abicalls
	.text
	.align	2
	.globl	ff_h264_idct_add_c
	.ent	ff_h264_idct_add_c
	.type	ff_h264_idct_add_c, @function
ff_h264_idct_add_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lhu	$2,0($5)
	addiu	$2,$2,32
	sh	$2,0($5)
#APP
 # 89 "h264idct.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 90 "h264idct.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 91 "h264idct.c" 1
	S32LDD xr3,$5,8
 # 0 "" 2
 # 92 "h264idct.c" 1
	S32LDD xr4,$5,12
 # 0 "" 2
 # 94 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 95 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 96 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 98 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 100 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 101 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 104 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 106 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 108 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 109 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 111 "h264idct.c" 1
	S32STD xr1,$5,0
 # 0 "" 2
 # 112 "h264idct.c" 1
	S32STD xr2,$5,4
 # 0 "" 2
 # 113 "h264idct.c" 1
	S32STD xr3,$5,8
 # 0 "" 2
 # 114 "h264idct.c" 1
	S32STD xr4,$5,12
 # 0 "" 2
 # 118 "h264idct.c" 1
	S32LDD xr1,$5,16
 # 0 "" 2
 # 119 "h264idct.c" 1
	S32LDD xr2,$5,20
 # 0 "" 2
 # 120 "h264idct.c" 1
	S32LDD xr3,$5,24
 # 0 "" 2
 # 121 "h264idct.c" 1
	S32LDD xr4,$5,28
 # 0 "" 2
 # 123 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 124 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 125 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 127 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 129 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 130 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 133 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 135 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 137 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 138 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 140 "h264idct.c" 1
	S32STD xr1,$5,16
 # 0 "" 2
 # 141 "h264idct.c" 1
	S32STD xr2,$5,20
 # 0 "" 2
 # 142 "h264idct.c" 1
	S32STD xr3,$5,24
 # 0 "" 2
 # 143 "h264idct.c" 1
	S32STD xr4,$5,28
 # 0 "" 2
 # 160 "h264idct.c" 1
	S32LDD xr10,$5,0
 # 0 "" 2
 # 161 "h264idct.c" 1
	S32LDD xr1,$5,8
 # 0 "" 2
 # 162 "h264idct.c" 1
	S32LDD xr2,$5,16
 # 0 "" 2
 # 163 "h264idct.c" 1
	S32LDD xr3,$5,24
 # 0 "" 2
 # 164 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 166 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 168 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 169 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 171 "h264idct.c" 1
	Q16ADD xr11,xr6,xr9,xr12,AS,WW
 # 0 "" 2
 # 173 "h264idct.c" 1
	Q16ADD xr13,xr7,xr8,xr14,AS,WW
 # 0 "" 2
 # 175 "h264idct.c" 1
	Q16SAR xr11,xr11,xr12,xr12,6
 # 0 "" 2
 # 176 "h264idct.c" 1
	Q16SAR xr13,xr13,xr14,xr14,6
 # 0 "" 2
 # 180 "h264idct.c" 1
	S32LDD xr10,$5,4
 # 0 "" 2
 # 181 "h264idct.c" 1
	S32LDD xr1,$5,12
 # 0 "" 2
 # 182 "h264idct.c" 1
	S32LDD xr2,$5,20
 # 0 "" 2
 # 183 "h264idct.c" 1
	S32LDD xr3,$5,28
 # 0 "" 2
 # 184 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 186 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 188 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 189 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 191 "h264idct.c" 1
	Q16ADD xr1,xr6,xr9,xr2,AS,WW
 # 0 "" 2
 # 193 "h264idct.c" 1
	Q16ADD xr3,xr7,xr8,xr4,AS,WW
 # 0 "" 2
 # 195 "h264idct.c" 1
	Q16SAR xr1,xr1,xr2,xr2,6
 # 0 "" 2
 # 196 "h264idct.c" 1
	Q16SAR xr3,xr3,xr4,xr4,6
 # 0 "" 2
 # 200 "h264idct.c" 1
	S32LDD xr5,$4,0
 # 0 "" 2
 # 201 "h264idct.c" 1
	Q8ACCE xr1,xr5,xr0,xr11,AA
 # 0 "" 2
 # 202 "h264idct.c" 1
	Q16SAT xr5,xr1,xr11
 # 0 "" 2
 # 203 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 205 "h264idct.c" 1
	S32LDIV xr5,$4,$6,0
 # 0 "" 2
 # 206 "h264idct.c" 1
	Q8ACCE xr3,xr5,xr0,xr13,AA
 # 0 "" 2
 # 207 "h264idct.c" 1
	Q16SAT xr5,xr3,xr13
 # 0 "" 2
 # 208 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 210 "h264idct.c" 1
	S32LDIV xr5,$4,$6,0
 # 0 "" 2
 # 211 "h264idct.c" 1
	Q8ACCE xr4,xr5,xr0,xr14,AA
 # 0 "" 2
 # 212 "h264idct.c" 1
	Q16SAT xr5,xr4,xr14
 # 0 "" 2
 # 213 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 215 "h264idct.c" 1
	S32LDIV xr5,$4,$6,0
 # 0 "" 2
 # 216 "h264idct.c" 1
	Q8ACCE xr2,xr5,xr0,xr12,AA
 # 0 "" 2
 # 217 "h264idct.c" 1
	Q16SAT xr5,xr2,xr12
 # 0 "" 2
 # 218 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
#NO_APP
	j	$31
	.end	ff_h264_idct_add_c
	.align	2
	.globl	ff_h264_lowres_idct_add_c
	.ent	ff_h264_lowres_idct_add_c
	.type	ff_h264_lowres_idct_add_c, @function
ff_h264_lowres_idct_add_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lhu	$2,0($6)
	addiu	$2,$2,4
	sh	$2,0($6)
#APP
 # 249 "h264idct.c" 1
	S32LDD xr1,$6,0
 # 0 "" 2
 # 250 "h264idct.c" 1
	S32LDD xr2,$6,4
 # 0 "" 2
 # 251 "h264idct.c" 1
	S32LDD xr3,$6,16
 # 0 "" 2
 # 252 "h264idct.c" 1
	S32LDD xr4,$6,20
 # 0 "" 2
 # 254 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 255 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 256 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 258 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 260 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 261 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 264 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 266 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 268 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 269 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 271 "h264idct.c" 1
	S32STD xr1,$6,0
 # 0 "" 2
 # 272 "h264idct.c" 1
	S32STD xr2,$6,4
 # 0 "" 2
 # 273 "h264idct.c" 1
	S32STD xr3,$6,16
 # 0 "" 2
 # 274 "h264idct.c" 1
	S32STD xr4,$6,20
 # 0 "" 2
 # 278 "h264idct.c" 1
	S32LDD xr1,$6,32
 # 0 "" 2
 # 279 "h264idct.c" 1
	S32LDD xr2,$6,36
 # 0 "" 2
 # 280 "h264idct.c" 1
	S32LDD xr3,$6,48
 # 0 "" 2
 # 281 "h264idct.c" 1
	S32LDD xr4,$6,52
 # 0 "" 2
 # 283 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 284 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 285 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 287 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 289 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 290 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 293 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 295 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 297 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 298 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 300 "h264idct.c" 1
	S32STD xr1,$6,32
 # 0 "" 2
 # 301 "h264idct.c" 1
	S32STD xr2,$6,36
 # 0 "" 2
 # 302 "h264idct.c" 1
	S32STD xr3,$6,48
 # 0 "" 2
 # 303 "h264idct.c" 1
	S32STD xr4,$6,52
 # 0 "" 2
 # 320 "h264idct.c" 1
	S32LDD xr10,$6,0
 # 0 "" 2
 # 321 "h264idct.c" 1
	S32LDD xr1,$6,16
 # 0 "" 2
 # 322 "h264idct.c" 1
	S32LDD xr2,$6,32
 # 0 "" 2
 # 323 "h264idct.c" 1
	S32LDD xr3,$6,48
 # 0 "" 2
 # 324 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 326 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 328 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 329 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 331 "h264idct.c" 1
	Q16ADD xr11,xr6,xr9,xr12,AS,WW
 # 0 "" 2
 # 333 "h264idct.c" 1
	Q16ADD xr13,xr7,xr8,xr14,AS,WW
 # 0 "" 2
 # 335 "h264idct.c" 1
	Q16SAR xr11,xr11,xr12,xr12,3
 # 0 "" 2
 # 336 "h264idct.c" 1
	Q16SAR xr13,xr13,xr14,xr14,3
 # 0 "" 2
 # 340 "h264idct.c" 1
	S32LDD xr10,$6,4
 # 0 "" 2
 # 341 "h264idct.c" 1
	S32LDD xr1,$6,20
 # 0 "" 2
 # 342 "h264idct.c" 1
	S32LDD xr2,$6,36
 # 0 "" 2
 # 343 "h264idct.c" 1
	S32LDD xr3,$6,52
 # 0 "" 2
 # 344 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 346 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 348 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 349 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 351 "h264idct.c" 1
	Q16ADD xr1,xr6,xr9,xr2,AS,WW
 # 0 "" 2
 # 353 "h264idct.c" 1
	Q16ADD xr3,xr7,xr8,xr4,AS,WW
 # 0 "" 2
 # 355 "h264idct.c" 1
	Q16SAR xr1,xr1,xr2,xr2,3
 # 0 "" 2
 # 356 "h264idct.c" 1
	Q16SAR xr3,xr3,xr4,xr4,3
 # 0 "" 2
 # 360 "h264idct.c" 1
	S32LDD xr5,$4,0
 # 0 "" 2
 # 361 "h264idct.c" 1
	Q8ACCE xr1,xr5,xr0,xr11,AA
 # 0 "" 2
 # 362 "h264idct.c" 1
	Q16SAT xr5,xr1,xr11
 # 0 "" 2
 # 363 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 365 "h264idct.c" 1
	S32LDIV xr5,$4,$5,0
 # 0 "" 2
 # 366 "h264idct.c" 1
	Q8ACCE xr3,xr5,xr0,xr13,AA
 # 0 "" 2
 # 367 "h264idct.c" 1
	Q16SAT xr5,xr3,xr13
 # 0 "" 2
 # 368 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 370 "h264idct.c" 1
	S32LDIV xr5,$4,$5,0
 # 0 "" 2
 # 371 "h264idct.c" 1
	Q8ACCE xr4,xr5,xr0,xr14,AA
 # 0 "" 2
 # 372 "h264idct.c" 1
	Q16SAT xr5,xr4,xr14
 # 0 "" 2
 # 373 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 375 "h264idct.c" 1
	S32LDIV xr5,$4,$5,0
 # 0 "" 2
 # 376 "h264idct.c" 1
	Q8ACCE xr2,xr5,xr0,xr12,AA
 # 0 "" 2
 # 377 "h264idct.c" 1
	Q16SAT xr5,xr2,xr12
 # 0 "" 2
 # 378 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
#NO_APP
	j	$31
	.end	ff_h264_lowres_idct_add_c
	.align	2
	.globl	ff_h264_lowres_idct_put_c
	.ent	ff_h264_lowres_idct_put_c
	.type	ff_h264_lowres_idct_put_c, @function
ff_h264_lowres_idct_put_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lhu	$2,0($6)
	addiu	$2,$2,4
	sh	$2,0($6)
#APP
 # 396 "h264idct.c" 1
	S32LDD xr1,$6,0
 # 0 "" 2
 # 397 "h264idct.c" 1
	S32LDD xr2,$6,4
 # 0 "" 2
 # 398 "h264idct.c" 1
	S32LDD xr3,$6,16
 # 0 "" 2
 # 399 "h264idct.c" 1
	S32LDD xr4,$6,20
 # 0 "" 2
 # 401 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 402 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 403 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 405 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 407 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 408 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 411 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 413 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 415 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 416 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 418 "h264idct.c" 1
	S32STD xr1,$6,0
 # 0 "" 2
 # 419 "h264idct.c" 1
	S32STD xr2,$6,4
 # 0 "" 2
 # 420 "h264idct.c" 1
	S32STD xr3,$6,16
 # 0 "" 2
 # 421 "h264idct.c" 1
	S32STD xr4,$6,20
 # 0 "" 2
 # 425 "h264idct.c" 1
	S32LDD xr1,$6,32
 # 0 "" 2
 # 426 "h264idct.c" 1
	S32LDD xr2,$6,36
 # 0 "" 2
 # 427 "h264idct.c" 1
	S32LDD xr3,$6,48
 # 0 "" 2
 # 428 "h264idct.c" 1
	S32LDD xr4,$6,52
 # 0 "" 2
 # 430 "h264idct.c" 1
	S32SFL xr7,xr1,xr3,xr5,ptn3
 # 0 "" 2
 # 431 "h264idct.c" 1
	S32SFL xr8,xr2,xr4,xr6,ptn3
 # 0 "" 2
 # 432 "h264idct.c" 1
	Q16SAR xr9,xr7,xr8,xr10,1
 # 0 "" 2
 # 434 "h264idct.c" 1
	Q16ADD xr1,xr5,xr6,xr2,AS,WW
 # 0 "" 2
 # 436 "h264idct.c" 1
	Q16ADD xr3,xr9,xr8,xr0,SA,WW
 # 0 "" 2
 # 437 "h264idct.c" 1
	Q16ADD xr4,xr7,xr10,xr0,AA,WW
 # 0 "" 2
 # 440 "h264idct.c" 1
	Q16ADD xr5,xr1,xr4,xr6,AS,WW
 # 0 "" 2
 # 442 "h264idct.c" 1
	Q16ADD xr7,xr2,xr3,xr8,AS,WW
 # 0 "" 2
 # 444 "h264idct.c" 1
	S32SFL xr1,xr7,xr5,xr3,ptn3
 # 0 "" 2
 # 445 "h264idct.c" 1
	S32SFL xr2,xr6,xr8,xr4,ptn3
 # 0 "" 2
 # 447 "h264idct.c" 1
	S32STD xr1,$6,32
 # 0 "" 2
 # 448 "h264idct.c" 1
	S32STD xr2,$6,36
 # 0 "" 2
 # 449 "h264idct.c" 1
	S32STD xr3,$6,48
 # 0 "" 2
 # 450 "h264idct.c" 1
	S32STD xr4,$6,52
 # 0 "" 2
 # 467 "h264idct.c" 1
	S32LDD xr10,$6,0
 # 0 "" 2
 # 468 "h264idct.c" 1
	S32LDD xr1,$6,16
 # 0 "" 2
 # 469 "h264idct.c" 1
	S32LDD xr2,$6,32
 # 0 "" 2
 # 470 "h264idct.c" 1
	S32LDD xr3,$6,48
 # 0 "" 2
 # 471 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 473 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 475 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 476 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 478 "h264idct.c" 1
	Q16ADD xr11,xr6,xr9,xr12,AS,WW
 # 0 "" 2
 # 480 "h264idct.c" 1
	Q16ADD xr13,xr7,xr8,xr14,AS,WW
 # 0 "" 2
 # 482 "h264idct.c" 1
	Q16SAR xr11,xr11,xr12,xr12,3
 # 0 "" 2
 # 483 "h264idct.c" 1
	Q16SAR xr13,xr13,xr14,xr14,3
 # 0 "" 2
 # 487 "h264idct.c" 1
	S32LDD xr10,$6,4
 # 0 "" 2
 # 488 "h264idct.c" 1
	S32LDD xr1,$6,20
 # 0 "" 2
 # 489 "h264idct.c" 1
	S32LDD xr2,$6,36
 # 0 "" 2
 # 490 "h264idct.c" 1
	S32LDD xr3,$6,52
 # 0 "" 2
 # 491 "h264idct.c" 1
	Q16SAR xr4,xr1,xr3,xr5,1
 # 0 "" 2
 # 493 "h264idct.c" 1
	Q16ADD xr6,xr10,xr2,xr7,AS,WW
 # 0 "" 2
 # 495 "h264idct.c" 1
	Q16ADD xr8,xr4,xr3,xr0,SA,WW
 # 0 "" 2
 # 496 "h264idct.c" 1
	Q16ADD xr9,xr1,xr5,xr0,AA,WW
 # 0 "" 2
 # 498 "h264idct.c" 1
	Q16ADD xr1,xr6,xr9,xr2,AS,WW
 # 0 "" 2
 # 500 "h264idct.c" 1
	Q16ADD xr3,xr7,xr8,xr4,AS,WW
 # 0 "" 2
 # 502 "h264idct.c" 1
	Q16SAR xr1,xr1,xr2,xr2,3
 # 0 "" 2
 # 503 "h264idct.c" 1
	Q16SAR xr3,xr3,xr4,xr4,3
 # 0 "" 2
 # 507 "h264idct.c" 1
	Q16SAT xr5,xr1,xr11
 # 0 "" 2
 # 508 "h264idct.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 510 "h264idct.c" 1
	Q16SAT xr5,xr3,xr13
 # 0 "" 2
 # 511 "h264idct.c" 1
	S32SDIV xr5,$4,$5,0
 # 0 "" 2
 # 513 "h264idct.c" 1
	Q16SAT xr5,xr4,xr14
 # 0 "" 2
 # 514 "h264idct.c" 1
	S32SDIV xr5,$4,$5,0
 # 0 "" 2
 # 516 "h264idct.c" 1
	Q16SAT xr5,xr2,xr12
 # 0 "" 2
 # 517 "h264idct.c" 1
	S32SDIV xr5,$4,$5,0
 # 0 "" 2
#NO_APP
	j	$31
	.end	ff_h264_lowres_idct_put_c
	.align	2
	.globl	ff_h264_idct8_add_c
	.ent	ff_h264_idct8_add_c
	.type	ff_h264_idct8_add_c, @function
ff_h264_idct8_add_c:
	.set	nomips16
	.frame	$sp,88,$31		# vars= 40, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-88
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,84($sp)
	sw	$23,80($sp)
	sw	$22,76($sp)
	sw	$21,72($sp)
	sw	$20,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	0
	lhu	$2,0($5)
	sw	$5,92($sp)
	addiu	$2,$2,32
	move	$19,$4
	sh	$2,0($5)
	move	$18,$6
	move	$16,$5
	addiu	$17,$5,128
$L8:
	lh	$5,2($16)
	lh	$2,10($16)
	lh	$4,6($16)
	lh	$3,14($16)
	lh	$6,4($16)
	lh	$12,12($16)
	addu	$7,$4,$2
	addu	$13,$3,$2
	subu	$10,$2,$4
	addu	$8,$5,$3
	sra	$2,$2,1
	lh	$11,0($16)
	lh	$9,8($16)
	addu	$13,$13,$2
	subu	$10,$10,$3
	sra	$2,$5,1
	subu	$8,$8,$4
	addu	$7,$7,$5
	sra	$3,$3,1
	sra	$4,$4,1
	subu	$10,$10,$3
	subu	$8,$8,$4
	addu	$7,$7,$2
	subu	$13,$13,$5
	sra	$2,$12,1
	sra	$3,$6,1
	subu	$15,$11,$9
	addu	$2,$2,$6
	addu	$9,$9,$11
	subu	$3,$3,$12
	sra	$5,$13,2
	sra	$6,$7,2
	sra	$14,$10,2
	sra	$4,$8,2
	subu	$11,$9,$2
	subu	$12,$15,$3
	addu	$5,$5,$8
	addu	$6,$6,$10
	subu	$4,$4,$13
	addu	$2,$2,$9
	subu	$7,$7,$14
	addu	$3,$3,$15
	andi	$2,$2,0xffff
	andi	$7,$7,0xffff
	andi	$3,$3,0xffff
	andi	$4,$4,0xffff
	andi	$12,$12,0xffff
	andi	$5,$5,0xffff
	andi	$11,$11,0xffff
	andi	$6,$6,0xffff
	subu	$8,$2,$7
	subu	$9,$3,$4
	subu	$10,$12,$5
	subu	$13,$11,$6
	addu	$7,$7,$2
	addu	$4,$4,$3
	addu	$5,$5,$12
	addu	$6,$6,$11
	sh	$7,0($16)
	sh	$8,14($16)
	sh	$4,2($16)
	sh	$9,12($16)
	sh	$5,4($16)
	sh	$10,10($16)
	sh	$6,6($16)
	sh	$13,8($16)
	addiu	$16,$16,16
	bne	$17,$16,$L8
	sll	$5,$18,1

	addu	$2,$5,$18
	addu	$2,$19,$2
	sll	$7,$18,2
	sll	$3,$18,3
	sw	$2,36($sp)
	lw	$2,%got(ff_cropTbl)($28)
	subu	$6,$3,$18
	addu	$4,$7,$18
	subu	$3,$3,$5
	move	$25,$19
	addu	$4,$19,$4
	addu	$fp,$19,$3
	addu	$23,$19,$6
	addiu	$19,$2,1024
	lw	$2,92($sp)
	sw	$4,32($sp)
	addiu	$2,$2,64
	sw	$2,24($sp)
	lw	$3,92($sp)
	lw	$4,92($sp)
	lw	$2,92($sp)
	addiu	$3,$3,32
	addiu	$4,$4,96
	addiu	$2,$2,80
	sw	$3,28($sp)
	sw	$4,40($sp)
	sw	$2,16($sp)
	lw	$3,92($sp)
	lw	$4,92($sp)
	lw	$2,92($sp)
	addiu	$3,$3,48
	addiu	$4,$4,112
	addiu	$2,$2,16
	sw	$3,12($sp)
	sw	$4,8($sp)
	sw	$2,20($sp)
	addu	$22,$25,$18
	addu	$21,$25,$5
	addu	$20,$25,$7
	move	$24,$0
$L9:
	lw	$3,16($sp)
	lw	$4,12($sp)
	addu	$2,$3,$24
	addu	$3,$4,$24
	lh	$7,0($3)
	lw	$4,40($sp)
	lw	$3,8($sp)
	lh	$12,0($2)
	addu	$2,$3,$24
	addu	$3,$4,$24
	lw	$4,20($sp)
	lh	$5,0($2)
	lh	$18,0($3)
	addu	$2,$4,$24
	lw	$3,92($sp)
	lw	$4,24($sp)
	lh	$13,0($2)
	addu	$2,$3,$24
	addu	$3,$4,$24
	lw	$4,28($sp)
	subu	$14,$12,$7
	addu	$6,$4,$24
	lh	$17,0($3)
	lh	$4,0($2)
	lh	$9,0($6)
	addu	$8,$7,$12
	sra	$2,$5,1
	subu	$14,$14,$5
	subu	$14,$14,$2
	sra	$15,$18,1
	sra	$2,$13,1
	addu	$8,$8,$13
	addu	$15,$15,$9
	addu	$8,$8,$2
	addu	$6,$17,$4
	sra	$16,$14,2
	subu	$16,$8,$16
	addu	$11,$15,$6
	lbu	$3,0($25)
	addu	$2,$16,$11
	sra	$2,$2,6
	addu	$2,$2,$3
	addu	$10,$13,$5
	subu	$10,$10,$7
	addu	$5,$5,$12
	addu	$2,$19,$2
	sra	$7,$7,1
	lbu	$3,0($2)
	subu	$10,$10,$7
	sra	$12,$12,1
	subu	$5,$5,$13
	sra	$9,$9,1
	addu	$5,$5,$12
	subu	$4,$4,$17
	subu	$9,$9,$18
	sra	$12,$10,2
	sb	$3,0($25)
	subu	$12,$12,$5
	addu	$7,$9,$4
	lbu	$3,0($22)
	addu	$2,$12,$7
	sra	$2,$2,6
	addu	$2,$2,$3
	addu	$2,$19,$2
	lbu	$3,0($2)
	sra	$5,$5,2
	sb	$3,0($22)
	subu	$4,$4,$9
	addu	$5,$5,$10
	lbu	$3,0($21)
	addu	$2,$5,$4
	sra	$2,$2,6
	addu	$2,$2,$3
	addu	$2,$19,$2
	lbu	$3,0($2)
	sra	$8,$8,2
	sb	$3,0($21)
	lw	$2,36($sp)
	subu	$6,$6,$15
	addu	$8,$8,$14
	lbu	$3,0($2)
	addu	$2,$8,$6
	sra	$2,$2,6
	addu	$2,$2,$3
	addu	$2,$19,$2
	lbu	$3,0($2)
	lw	$2,36($sp)
	subu	$6,$6,$8
	sb	$3,0($2)
	lbu	$2,0($20)
	sra	$6,$6,6
	addu	$6,$6,$2
	addu	$6,$19,$6
	lbu	$2,0($6)
	subu	$4,$4,$5
	sb	$2,0($20)
	lw	$2,32($sp)
	sra	$4,$4,6
	lbu	$3,0($2)
	subu	$7,$7,$12
	addu	$4,$4,$3
	addu	$4,$19,$4
	lbu	$2,0($4)
	lw	$3,32($sp)
	sra	$7,$7,6
	sb	$2,0($3)
	lbu	$3,0($fp)
	subu	$11,$11,$16
	addu	$7,$7,$3
	addu	$7,$19,$7
	lbu	$2,0($7)
	sra	$11,$11,6
	sb	$2,0($fp)
	lbu	$3,0($23)
	addiu	$24,$24,2
	addu	$11,$11,$3
	addu	$11,$19,$11
	lbu	$2,0($11)
	li	$3,16			# 0x10
	sb	$2,0($23)
	lw	$4,36($sp)
	lw	$2,32($sp)
	addiu	$4,$4,1
	addiu	$2,$2,1
	addiu	$25,$25,1
	addiu	$22,$22,1
	addiu	$21,$21,1
	sw	$4,36($sp)
	addiu	$20,$20,1
	sw	$2,32($sp)
	addiu	$fp,$fp,1
	bne	$24,$3,$L9
	addiu	$23,$23,1

	lw	$fp,84($sp)
	lw	$23,80($sp)
	lw	$22,76($sp)
	lw	$21,72($sp)
	lw	$20,68($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,88

	.set	macro
	.set	reorder
	.end	ff_h264_idct8_add_c
	.align	2
	.globl	ff_h264_idct_dc_add_c
	.ent	ff_h264_idct_dc_add_c
	.type	ff_h264_idct_dc_add_c, @function
ff_h264_idct_dc_add_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lh	$2,0($5)
	addiu	$2,$2,32
	sra	$2,$2,6
#APP
 # 610 "h264idct.c" 1
	S32I2M xr1,$2
 # 0 "" 2
 # 611 "h264idct.c" 1
	S32SFL xr0,xr1,xr1,xr2,ptn3
 # 0 "" 2
 # 612 "h264idct.c" 1
	S32SFL xr12,xr2,xr2,xr13,ptn3
 # 0 "" 2
 # 616 "h264idct.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 617 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 618 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 620 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 621 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 625 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 626 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 627 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 629 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 630 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 634 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 635 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 636 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 638 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 639 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 643 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 644 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 645 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 647 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 648 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
#NO_APP
	j	$31
	.end	ff_h264_idct_dc_add_c
	.align	2
	.globl	ff_h264_idct8_dc_add_c
	.ent	ff_h264_idct8_dc_add_c
	.type	ff_h264_idct8_dc_add_c, @function
ff_h264_idct8_dc_add_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lh	$2,0($5)
	addiu	$2,$2,32
	sra	$2,$2,6
#APP
 # 679 "h264idct.c" 1
	S32I2M xr1,$2
 # 0 "" 2
 # 680 "h264idct.c" 1
	S32SFL xr0,xr1,xr1,xr2,ptn3
 # 0 "" 2
 # 681 "h264idct.c" 1
	S32SFL xr12,xr2,xr2,xr13,ptn3
 # 0 "" 2
 # 685 "h264idct.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 686 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 687 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 688 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 690 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 691 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 694 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 695 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 697 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 698 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 702 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 703 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 704 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 705 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 707 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 708 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 711 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 712 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 714 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 715 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 719 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 720 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 721 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 722 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 724 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 725 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 728 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 729 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 731 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 732 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 736 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 737 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 738 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 739 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 741 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 742 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 745 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 746 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 748 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 749 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 753 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 754 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 755 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 756 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 758 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 759 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 762 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 763 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 765 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 766 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 770 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 771 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 772 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 773 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 775 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 776 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 779 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 780 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 782 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 783 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 787 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 788 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 789 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 790 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 792 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 793 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 796 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 797 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 799 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 800 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
 # 804 "h264idct.c" 1
	S32LDIV xr1,$4,$6,0
 # 0 "" 2
 # 805 "h264idct.c" 1
	S32LDD xr3,$4,4
 # 0 "" 2
 # 806 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 807 "h264idct.c" 1
	Q8ACCE xr4,xr1,xr0,xr5,AA
 # 0 "" 2
 # 809 "h264idct.c" 1
	Q16SAT xr1,xr4,xr5
 # 0 "" 2
 # 810 "h264idct.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
 # 813 "h264idct.c" 1
	D32SLL xr4,xr12,xr13,xr5,0
 # 0 "" 2
 # 814 "h264idct.c" 1
	Q8ACCE xr4,xr3,xr0,xr5,AA
 # 0 "" 2
 # 816 "h264idct.c" 1
	Q16SAT xr3,xr4,xr5
 # 0 "" 2
 # 817 "h264idct.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
#NO_APP
	j	$31
	.end	ff_h264_idct8_dc_add_c
	.ident	"GCC: (GNU) 4.3.3"
