	.file	1 "h264dsputil.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.abicalls
	.text
	.align	2
	.ent	h264_v_loop_filter_luma_mxu
	.type	h264_v_loop_filter_luma_mxu, @function
h264_v_loop_filter_luma_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
#APP
 # 190 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 191 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 192 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 193 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 194 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 195 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	sll	$3,$5,2
	sll	$2,$5,1
	lw	$6,16($sp)
	subu	$7,$4,$2
	li	$8,4			# 0x4
	subu	$4,$4,$3
	move	$3,$0
$L3:
	lb	$2,0($6)
	bltz	$2,$L2
#APP
 # 203 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
 # 204 "h264dsputil.c" 1
	S32SFL xr0,xr15,xr15,xr15,ptn0
 # 0 "" 2
 # 205 "h264dsputil.c" 1
	S32SFL xr0,xr15,xr15,xr15,ptn3
 # 0 "" 2
#NO_APP
	move	$2,$4
#APP
 # 208 "h264dsputil.c" 1
	S32LDIV xr12,$2,$5,0
 # 0 "" 2
 # 209 "h264dsputil.c" 1
	S32LDIV xr11,$2,$5,0
 # 0 "" 2
 # 210 "h264dsputil.c" 1
	S32LDIV xr10,$2,$5,0
 # 0 "" 2
 # 211 "h264dsputil.c" 1
	S32LDIV xr9,$2,$5,0
 # 0 "" 2
 # 212 "h264dsputil.c" 1
	S32LDIV xr1,$2,$5,0
 # 0 "" 2
 # 213 "h264dsputil.c" 1
	S32LDIV xr2,$2,$5,0
 # 0 "" 2
 # 214 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 215 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 216 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 218 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 219 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 220 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 221 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 222 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 223 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 225 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 226 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 227 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 230 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
 # 231 "h264dsputil.c" 1
	Q8ABD xr6,xr12,xr10
 # 0 "" 2
 # 232 "h264dsputil.c" 1
	Q8ABD xr7,xr2,xr9
 # 0 "" 2
 # 233 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 235 "h264dsputil.c" 1
	Q8ADDE xr4,xr6,xr14,xr5,SS
 # 0 "" 2
 # 236 "h264dsputil.c" 1
	Q8ADDE xr6,xr7,xr14,xr7,SS
 # 0 "" 2
 # 237 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr15,xr15,AA
 # 0 "" 2
 # 238 "h264dsputil.c" 1
	Q16SLR xr4,xr4,xr5,xr5,15
 # 0 "" 2
 # 239 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 240 "h264dsputil.c" 1
	Q16SAT xr4,xr4,xr5
 # 0 "" 2
 # 241 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 243 "h264dsputil.c" 1
	Q8ADD xr6,xr4,xr5,AA
 # 0 "" 2
 # 244 "h264dsputil.c" 1
	Q8MADL xr0,xr6,xr3,xr6,AA
 # 0 "" 2
 # 245 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr15,xr4,AA
 # 0 "" 2
 # 246 "h264dsputil.c" 1
	Q8MADL xr0,xr5,xr15,xr5,AA
 # 0 "" 2
 # 247 "h264dsputil.c" 1
	Q8ADD xr3,xr6,xr15,AA
 # 0 "" 2
 # 249 "h264dsputil.c" 1
	Q8AVGR xr6,xr9,xr10
 # 0 "" 2
 # 250 "h264dsputil.c" 1
	Q8AVG xr12,xr6,xr12
 # 0 "" 2
 # 251 "h264dsputil.c" 1
	Q8AVG xr2,xr6,xr2
 # 0 "" 2
 # 252 "h264dsputil.c" 1
	Q8ADDE xr12,xr12,xr11,xr7,SS
 # 0 "" 2
 # 253 "h264dsputil.c" 1
	Q8ADDE xr2,xr2,xr1,xr8,SS
 # 0 "" 2
 # 254 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr4,xr15,SS
 # 0 "" 2
 # 256 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr6
 # 0 "" 2
 # 257 "h264dsputil.c" 1
	D16MAX xr7,xr7,xr15
 # 0 "" 2
 # 258 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr4,xr15,AA
 # 0 "" 2
 # 259 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr6
 # 0 "" 2
 # 260 "h264dsputil.c" 1
	D16MIN xr7,xr7,xr15
 # 0 "" 2
 # 261 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr5,xr15,SS
 # 0 "" 2
 # 262 "h264dsputil.c" 1
	S32SFL xr0,xr12,xr7,xr12,ptn1
 # 0 "" 2
 # 264 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr6
 # 0 "" 2
 # 265 "h264dsputil.c" 1
	D16MAX xr8,xr8,xr15
 # 0 "" 2
 # 266 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr5,xr15,AA
 # 0 "" 2
 # 267 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr6
 # 0 "" 2
 # 268 "h264dsputil.c" 1
	D16MIN xr8,xr8,xr15
 # 0 "" 2
 # 270 "h264dsputil.c" 1
	Q8ADD xr4,xr12,xr11,AA
 # 0 "" 2
 # 271 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr8,xr2,ptn1
 # 0 "" 2
 # 272 "h264dsputil.c" 1
	Q8ADD xr5,xr2,xr1,AA
 # 0 "" 2
 # 275 "h264dsputil.c" 1
	Q8ADDE xr2,xr9,xr10,xr12,SS
 # 0 "" 2
 # 276 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 277 "h264dsputil.c" 1
	Q8ACCE xr2,xr11,xr1,xr12,SS
 # 0 "" 2
 # 279 "h264dsputil.c" 1
	Q8ADDE xr11,xr0,xr3,xr15,AA
 # 0 "" 2
 # 280 "h264dsputil.c" 1
	Q8ADDE xr1,xr0,xr3,xr6,SS
 # 0 "" 2
 # 282 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 283 "h264dsputil.c" 1
	D16AVGR xr2,xr2,xr0
 # 0 "" 2
 # 284 "h264dsputil.c" 1
	D16AVGR xr12,xr12,xr0
 # 0 "" 2
 # 285 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr1
 # 0 "" 2
 # 286 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr6
 # 0 "" 2
 # 287 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr11
 # 0 "" 2
 # 288 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr15
 # 0 "" 2
 # 289 "h264dsputil.c" 1
	Q16ADD xr1,xr0,xr2,xr0,SS,WW
 # 0 "" 2
 # 290 "h264dsputil.c" 1
	Q16ADD xr11,xr0,xr12,xr0,SS,WW
 # 0 "" 2
 # 292 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr10,xr12,AA
 # 0 "" 2
 # 293 "h264dsputil.c" 1
	Q8ACCE xr1,xr0,xr9,xr11,AA
 # 0 "" 2
#NO_APP
	move	$2,$7
#APP
 # 295 "h264dsputil.c" 1
	Q16SAT xr10,xr2,xr12
 # 0 "" 2
 # 296 "h264dsputil.c" 1
	Q16SAT xr9,xr1,xr11
 # 0 "" 2
 # 298 "h264dsputil.c" 1
	S32STD xr4,$7,0
 # 0 "" 2
 # 299 "h264dsputil.c" 1
	S32SDIV xr10,$2,$5,0
 # 0 "" 2
 # 300 "h264dsputil.c" 1
	S32SDIV xr9,$2,$5,0
 # 0 "" 2
 # 301 "h264dsputil.c" 1
	S32SDIV xr5,$2,$5,0
 # 0 "" 2
#NO_APP
$L2:
	addiu	$3,$3,1
	addiu	$6,$6,1
	addiu	$4,$4,4
	.set	noreorder
	.set	nomacro
	bne	$3,$8,$L3
	addiu	$7,$7,4
	.set	macro
	.set	reorder

	j	$31
	.end	h264_v_loop_filter_luma_mxu
	.align	2
	.ent	h264_h_loop_filter_luma_mxu
	.type	h264_h_loop_filter_luma_mxu, @function
h264_h_loop_filter_luma_mxu:
	.set	nomips16
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-8
	sw	$16,4($sp)
	move	$13,$4
	move	$15,$5
	lw	$25,24($sp)
#APP
 # 310 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 311 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 312 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 313 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 314 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 315 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	move	$14,$0
	sll	$16,$5,2
	li	$24,4			# 0x4
	addu	$2,$25,$14
$L14:
	lb	$2,0($2)
	bltz	$2,$L13
#APP
 # 322 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
 # 323 "h264dsputil.c" 1
	S32SFL xr0,xr15,xr15,xr15,ptn0
 # 0 "" 2
 # 324 "h264dsputil.c" 1
	S32SFL xr0,xr15,xr15,xr15,ptn3
 # 0 "" 2
 # 327 "h264dsputil.c" 1
	S32LDD xr2,$13,0
 # 0 "" 2
 # 328 "h264dsputil.c" 1
	S32LDD xr1,$13,-4
 # 0 "" 2
#NO_APP
	move	$2,$13
#APP
 # 329 "h264dsputil.c" 1
	S32LDIV xr4,$2,$15,0
 # 0 "" 2
 # 330 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 332 "h264dsputil.c" 1
	S32SFL xr6,xr4,xr2,xr8,ptn0
 # 0 "" 2
 # 333 "h264dsputil.c" 1
	S32SFL xr5,xr3,xr1,xr7,ptn0
 # 0 "" 2
 # 335 "h264dsputil.c" 1
	S32LDIV xr2,$2,$15,0
 # 0 "" 2
 # 336 "h264dsputil.c" 1
	S32LDD xr1,$2,-4
 # 0 "" 2
 # 337 "h264dsputil.c" 1
	S32LDIV xr4,$2,$15,0
 # 0 "" 2
 # 338 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 340 "h264dsputil.c" 1
	S32SFL xr4,xr4,xr2,xr2,ptn0
 # 0 "" 2
 # 341 "h264dsputil.c" 1
	S32SFL xr3,xr3,xr1,xr1,ptn0
 # 0 "" 2
 # 343 "h264dsputil.c" 1
	S32SFL xr10,xr3,xr5,xr11,ptn3
 # 0 "" 2
 # 344 "h264dsputil.c" 1
	S32SFL xr12,xr1,xr7,xr0,ptn3
 # 0 "" 2
 # 345 "h264dsputil.c" 1
	S32SFL xr1,xr2,xr8,xr9,ptn3
 # 0 "" 2
 # 346 "h264dsputil.c" 1
	S32SFL xr0,xr4,xr6,xr2,ptn3
 # 0 "" 2
 # 348 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 349 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 350 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 352 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 353 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 354 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 355 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 356 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 357 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 359 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 360 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 361 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 364 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
 # 365 "h264dsputil.c" 1
	Q8ABD xr6,xr12,xr10
 # 0 "" 2
 # 366 "h264dsputil.c" 1
	Q8ABD xr7,xr2,xr9
 # 0 "" 2
 # 367 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 369 "h264dsputil.c" 1
	Q8ADDE xr4,xr6,xr14,xr5,SS
 # 0 "" 2
 # 370 "h264dsputil.c" 1
	Q8ADDE xr6,xr7,xr14,xr7,SS
 # 0 "" 2
 # 371 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr15,xr15,AA
 # 0 "" 2
 # 372 "h264dsputil.c" 1
	Q16SLR xr4,xr4,xr5,xr5,15
 # 0 "" 2
 # 373 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 374 "h264dsputil.c" 1
	Q16SAT xr4,xr4,xr5
 # 0 "" 2
 # 375 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 377 "h264dsputil.c" 1
	Q8ADD xr6,xr4,xr5,AA
 # 0 "" 2
 # 378 "h264dsputil.c" 1
	Q8MADL xr0,xr6,xr3,xr6,AA
 # 0 "" 2
 # 379 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr15,xr4,AA
 # 0 "" 2
 # 380 "h264dsputil.c" 1
	Q8MADL xr0,xr5,xr15,xr5,AA
 # 0 "" 2
 # 381 "h264dsputil.c" 1
	Q8ADD xr3,xr6,xr15,AA
 # 0 "" 2
 # 383 "h264dsputil.c" 1
	Q8AVGR xr6,xr9,xr10
 # 0 "" 2
 # 384 "h264dsputil.c" 1
	Q8AVG xr12,xr6,xr12
 # 0 "" 2
 # 385 "h264dsputil.c" 1
	Q8AVG xr2,xr6,xr2
 # 0 "" 2
 # 386 "h264dsputil.c" 1
	Q8ADDE xr12,xr12,xr11,xr7,SS
 # 0 "" 2
 # 387 "h264dsputil.c" 1
	Q8ADDE xr2,xr2,xr1,xr8,SS
 # 0 "" 2
 # 388 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr4,xr15,SS
 # 0 "" 2
 # 390 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr6
 # 0 "" 2
 # 391 "h264dsputil.c" 1
	D16MAX xr7,xr7,xr15
 # 0 "" 2
 # 392 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr4,xr15,AA
 # 0 "" 2
 # 393 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr6
 # 0 "" 2
 # 394 "h264dsputil.c" 1
	D16MIN xr7,xr7,xr15
 # 0 "" 2
 # 395 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr5,xr15,SS
 # 0 "" 2
 # 396 "h264dsputil.c" 1
	S32SFL xr0,xr12,xr7,xr12,ptn1
 # 0 "" 2
 # 398 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr6
 # 0 "" 2
 # 399 "h264dsputil.c" 1
	D16MAX xr8,xr8,xr15
 # 0 "" 2
 # 400 "h264dsputil.c" 1
	Q8ADDE xr6,xr0,xr5,xr15,AA
 # 0 "" 2
 # 401 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr6
 # 0 "" 2
 # 402 "h264dsputil.c" 1
	D16MIN xr8,xr8,xr15
 # 0 "" 2
 # 404 "h264dsputil.c" 1
	Q8ADD xr4,xr12,xr11,AA
 # 0 "" 2
 # 405 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr8,xr2,ptn1
 # 0 "" 2
 # 406 "h264dsputil.c" 1
	Q8ADD xr5,xr2,xr1,AA
 # 0 "" 2
 # 408 "h264dsputil.c" 1
	Q8ADDE xr2,xr9,xr10,xr12,SS
 # 0 "" 2
 # 409 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 410 "h264dsputil.c" 1
	Q8ACCE xr2,xr11,xr1,xr12,SS
 # 0 "" 2
 # 412 "h264dsputil.c" 1
	Q8ADDE xr11,xr0,xr3,xr15,AA
 # 0 "" 2
 # 413 "h264dsputil.c" 1
	Q8ADDE xr1,xr0,xr3,xr6,SS
 # 0 "" 2
 # 415 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 416 "h264dsputil.c" 1
	D16AVGR xr2,xr2,xr0
 # 0 "" 2
 # 417 "h264dsputil.c" 1
	D16AVGR xr12,xr12,xr0
 # 0 "" 2
 # 418 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr1
 # 0 "" 2
 # 419 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr6
 # 0 "" 2
 # 420 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr11
 # 0 "" 2
 # 421 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr15
 # 0 "" 2
 # 422 "h264dsputil.c" 1
	Q16ADD xr1,xr0,xr2,xr0,SS,WW
 # 0 "" 2
 # 423 "h264dsputil.c" 1
	Q16ADD xr11,xr0,xr12,xr0,SS,WW
 # 0 "" 2
 # 425 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr10,xr12,AA
 # 0 "" 2
 # 426 "h264dsputil.c" 1
	Q8ACCE xr1,xr0,xr9,xr11,AA
 # 0 "" 2
 # 427 "h264dsputil.c" 1
	Q16SAT xr10,xr2,xr12
 # 0 "" 2
 # 428 "h264dsputil.c" 1
	Q16SAT xr9,xr1,xr11
 # 0 "" 2
 # 430 "h264dsputil.c" 1
	S32SFL xr2,xr10,xr4,xr1,ptn0
 # 0 "" 2
 # 431 "h264dsputil.c" 1
	S32SFL xr4,xr5,xr9,xr3,ptn0
 # 0 "" 2
 # 432 "h264dsputil.c" 1
	S32M2I xr1, $8
 # 0 "" 2
 # 433 "h264dsputil.c" 1
	S32M2I xr2, $12
 # 0 "" 2
 # 434 "h264dsputil.c" 1
	S32M2I xr3, $7
 # 0 "" 2
 # 435 "h264dsputil.c" 1
	S32M2I xr4, $11
 # 0 "" 2
#NO_APP
	addu	$2,$13,$15
	addu	$3,$2,$15
	addu	$4,$3,$15
	srl	$5,$8,16
	srl	$6,$7,16
	srl	$9,$12,16
	srl	$10,$11,16
	sh	$8,-2($13)
	sh	$7,0($13)
	sh	$5,-2($2)
	sh	$6,0($2)
	addu	$13,$4,$15
	sh	$12,-2($3)
	sh	$11,0($3)
	sh	$9,-2($4)
	sh	$10,0($4)
$L9:
	addiu	$14,$14,1
	.set	noreorder
	.set	nomacro
	bne	$14,$24,$L14
	addu	$2,$25,$14
	.set	macro
	.set	reorder

	lw	$16,4($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

$L13:
	.set	noreorder
	.set	nomacro
	b	$L9
	addu	$13,$13,$16
	.set	macro
	.set	reorder

	.end	h264_h_loop_filter_luma_mxu
	.align	2
	.ent	h264_v_loop_filter_chroma_mxu
	.type	h264_v_loop_filter_chroma_mxu, @function
h264_v_loop_filter_chroma_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
#APP
 # 507 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 508 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 509 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 510 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 511 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 512 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	li	$2,16842752			# 0x1010000
	ori	$2,$2,0x101
#APP
 # 513 "h264dsputil.c" 1
	S32I2M xr8,$2
 # 0 "" 2
#NO_APP
	lw	$6,16($sp)
	sll	$2,$5,1
	subu	$4,$4,$2
	addiu	$7,$6,4
$L16:
	move	$3,$4
#APP
 # 519 "h264dsputil.c" 1
	S32LDD xr11,$4,0
 # 0 "" 2
#NO_APP
	move	$2,$4
#APP
 # 520 "h264dsputil.c" 1
	S32LDIV xr10,$2,$5,0
 # 0 "" 2
 # 521 "h264dsputil.c" 1
	S32LDIV xr9,$2,$5,0
 # 0 "" 2
 # 522 "h264dsputil.c" 1
	S32LDIV xr1,$2,$5,0
 # 0 "" 2
 # 523 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 524 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 525 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 527 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 528 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 529 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 530 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 531 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 532 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 534 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 535 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 536 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 538 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
#NO_APP
	lh	$2,0($6)
#APP
 # 540 "h264dsputil.c" 1
	S32I2M xr2,$2
 # 0 "" 2
 # 541 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr2,xr15,ptn0
 # 0 "" 2
 # 543 "h264dsputil.c" 1
	Q8ADDE xr2,xr9,xr10,xr12,SS
 # 0 "" 2
 # 544 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr8,xr12,AA
 # 0 "" 2
 # 545 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 547 "h264dsputil.c" 1
	Q8MAX xr15,xr0,xr15
 # 0 "" 2
 # 548 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 549 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr15,xr15,AA
 # 0 "" 2
 # 550 "h264dsputil.c" 1
	Q8ACCE xr2,xr11,xr1,xr12,SS
 # 0 "" 2
 # 552 "h264dsputil.c" 1
	Q8ADDE xr7,xr0,xr15,xr6,AA
 # 0 "" 2
 # 553 "h264dsputil.c" 1
	Q8ADDE xr5,xr0,xr15,xr4,SS
 # 0 "" 2
 # 554 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr12,xr12,3
 # 0 "" 2
 # 555 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr5
 # 0 "" 2
 # 556 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr4
 # 0 "" 2
 # 557 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr7
 # 0 "" 2
 # 558 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr6
 # 0 "" 2
 # 560 "h264dsputil.c" 1
	Q16ADD xr1,xr0,xr2,xr0,SS,WW
 # 0 "" 2
 # 561 "h264dsputil.c" 1
	Q16ADD xr11,xr0,xr12,xr0,SS,WW
 # 0 "" 2
 # 562 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr10,xr12,AA
 # 0 "" 2
 # 563 "h264dsputil.c" 1
	Q8ACCE xr1,xr0,xr9,xr11,AA
 # 0 "" 2
 # 565 "h264dsputil.c" 1
	Q16SAT xr2,xr2,xr12
 # 0 "" 2
 # 566 "h264dsputil.c" 1
	Q16SAT xr1,xr1,xr11
 # 0 "" 2
 # 567 "h264dsputil.c" 1
	S32SDIV xr2,$3,$5,0
 # 0 "" 2
 # 568 "h264dsputil.c" 1
	S32SDIV xr1,$3,$5,0
 # 0 "" 2
#NO_APP
	addiu	$6,$6,2
	.set	noreorder
	.set	nomacro
	bne	$7,$6,$L16
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	h264_v_loop_filter_chroma_mxu
	.align	2
	.ent	h264_h_loop_filter_chroma_mxu
	.type	h264_h_loop_filter_chroma_mxu, @function
h264_h_loop_filter_chroma_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$10,$4
	move	$24,$5
#APP
 # 579 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 580 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 581 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 582 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 583 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 584 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	li	$2,16842752			# 0x1010000
	ori	$2,$2,0x101
#APP
 # 585 "h264dsputil.c" 1
	S32I2M xr8,$2
 # 0 "" 2
#NO_APP
	sll	$3,$5,1
	addiu	$2,$3,-1
	lw	$11,16($sp)
	addu	$2,$5,$2
	addu	$15,$4,$2
	sll	$13,$5,2
	addu	$14,$4,$5
	addu	$12,$4,$3
	addiu	$25,$11,4
$L20:
#APP
 # 591 "h264dsputil.c" 1
	S32LDD xr2,$10,0
 # 0 "" 2
 # 592 "h264dsputil.c" 1
	S32LDD xr1,$10,-4
 # 0 "" 2
#NO_APP
	move	$2,$10
#APP
 # 593 "h264dsputil.c" 1
	S32LDIV xr4,$2,$24,0
 # 0 "" 2
 # 594 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 596 "h264dsputil.c" 1
	S32SFL xr6,xr4,xr2,xr12,ptn0
 # 0 "" 2
 # 597 "h264dsputil.c" 1
	S32SFL xr5,xr3,xr1,xr7,ptn0
 # 0 "" 2
 # 599 "h264dsputil.c" 1
	S32LDIV xr2,$2,$24,0
 # 0 "" 2
 # 600 "h264dsputil.c" 1
	S32LDD xr1,$2,-4
 # 0 "" 2
 # 601 "h264dsputil.c" 1
	S32LDIV xr4,$2,$24,0
 # 0 "" 2
 # 602 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 604 "h264dsputil.c" 1
	S32SFL xr4,xr4,xr2,xr2,ptn0
 # 0 "" 2
 # 605 "h264dsputil.c" 1
	S32SFL xr3,xr3,xr1,xr1,ptn0
 # 0 "" 2
 # 607 "h264dsputil.c" 1
	S32SFL xr10,xr3,xr5,xr11,ptn3
 # 0 "" 2
 # 608 "h264dsputil.c" 1
	S32SFL xr1,xr2,xr12,xr9,ptn3
 # 0 "" 2
 # 610 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 611 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 612 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 614 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 615 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 616 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 617 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 618 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 619 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 621 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 622 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 623 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 625 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
#NO_APP
	lh	$2,0($11)
#APP
 # 627 "h264dsputil.c" 1
	S32I2M xr2,$2
 # 0 "" 2
 # 628 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr2,xr15,ptn0
 # 0 "" 2
 # 630 "h264dsputil.c" 1
	Q8ADDE xr2,xr9,xr10,xr12,SS
 # 0 "" 2
 # 631 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr8,xr12,AA
 # 0 "" 2
 # 632 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 634 "h264dsputil.c" 1
	Q8MAX xr15,xr0,xr15
 # 0 "" 2
 # 635 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr12,xr12,2
 # 0 "" 2
 # 636 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr15,xr15,AA
 # 0 "" 2
 # 637 "h264dsputil.c" 1
	Q8ACCE xr2,xr11,xr1,xr12,SS
 # 0 "" 2
 # 639 "h264dsputil.c" 1
	Q8ADDE xr7,xr0,xr15,xr6,AA
 # 0 "" 2
 # 640 "h264dsputil.c" 1
	Q8ADDE xr5,xr0,xr15,xr4,SS
 # 0 "" 2
 # 641 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr12,xr12,3
 # 0 "" 2
 # 642 "h264dsputil.c" 1
	D16MAX xr2,xr2,xr5
 # 0 "" 2
 # 643 "h264dsputil.c" 1
	D16MAX xr12,xr12,xr4
 # 0 "" 2
 # 644 "h264dsputil.c" 1
	D16MIN xr2,xr2,xr7
 # 0 "" 2
 # 645 "h264dsputil.c" 1
	D16MIN xr12,xr12,xr6
 # 0 "" 2
 # 647 "h264dsputil.c" 1
	Q16ADD xr1,xr0,xr2,xr0,SS,WW
 # 0 "" 2
 # 648 "h264dsputil.c" 1
	Q16ADD xr11,xr0,xr12,xr0,SS,WW
 # 0 "" 2
 # 649 "h264dsputil.c" 1
	Q8ACCE xr2,xr0,xr10,xr12,AA
 # 0 "" 2
 # 650 "h264dsputil.c" 1
	Q8ACCE xr1,xr0,xr9,xr11,AA
 # 0 "" 2
 # 652 "h264dsputil.c" 1
	Q16SAT xr2,xr2,xr12
 # 0 "" 2
 # 653 "h264dsputil.c" 1
	Q16SAT xr1,xr1,xr11
 # 0 "" 2
 # 654 "h264dsputil.c" 1
	S32M2I xr2, $2
 # 0 "" 2
 # 655 "h264dsputil.c" 1
	S32M2I xr1, $3
 # 0 "" 2
#NO_APP
	srl	$8,$2,24
	srl	$9,$3,24
	srl	$4,$2,8
	srl	$5,$3,8
	srl	$6,$2,16
	srl	$7,$3,16
	addiu	$11,$11,2
	sb	$2,-1($10)
	sb	$3,0($10)
	sb	$4,-1($14)
	sb	$5,0($14)
	addu	$10,$10,$13
	sb	$6,-1($12)
	sb	$7,0($12)
	addu	$14,$14,$13
	sb	$8,0($15)
	sb	$9,1($15)
	addu	$12,$12,$13
	.set	noreorder
	.set	nomacro
	bne	$25,$11,$L20
	addu	$15,$15,$13
	.set	macro
	.set	reorder

	j	$31
	.end	h264_h_loop_filter_chroma_mxu
	.align	2
	.ent	h264_v_loop_filter_chroma_intra_mxu
	.type	h264_v_loop_filter_chroma_intra_mxu, @function
h264_v_loop_filter_chroma_intra_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
#APP
 # 717 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 718 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 719 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 720 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 721 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 722 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	li	$2,16842752			# 0x1010000
	ori	$2,$2,0x101
#APP
 # 723 "h264dsputil.c" 1
	S32I2M xr8,$2
 # 0 "" 2
#NO_APP
	sll	$3,$5,1
	subu	$3,$4,$3
	move	$6,$0
	subu	$4,$4,$5
	li	$7,2			# 0x2
$L24:
	move	$2,$3
#APP
 # 728 "h264dsputil.c" 1
	S32LDD xr11,$3,0
 # 0 "" 2
 # 729 "h264dsputil.c" 1
	S32LDIV xr10,$2,$5,0
 # 0 "" 2
 # 730 "h264dsputil.c" 1
	S32LDIV xr9,$2,$5,0
 # 0 "" 2
 # 731 "h264dsputil.c" 1
	S32LDIV xr1,$2,$5,0
 # 0 "" 2
 # 732 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 733 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 734 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 736 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 737 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 738 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 739 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 740 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 741 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 743 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 744 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 745 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 748 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
 # 750 "h264dsputil.c" 1
	Q8ADDE xr12,xr11,xr8,xr7,AA
 # 0 "" 2
 # 751 "h264dsputil.c" 1
	Q16SLL xr12,xr12,xr7,xr7,1
 # 0 "" 2
 # 752 "h264dsputil.c" 1
	Q8ACCE xr12,xr10,xr1,xr7,AA
 # 0 "" 2
 # 754 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 756 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr8,xr6,AA
 # 0 "" 2
 # 757 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr6,xr6,1
 # 0 "" 2
 # 758 "h264dsputil.c" 1
	Q8ACCE xr2,xr9,xr11,xr6,AA
 # 0 "" 2
 # 760 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr7,xr7,2
 # 0 "" 2
 # 761 "h264dsputil.c" 1
	S32SFL xr0,xr12,xr7,xr12,ptn1
 # 0 "" 2
 # 762 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr12,xr12,AA
 # 0 "" 2
 # 763 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr6,xr6,2
 # 0 "" 2
 # 764 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr6,xr2,ptn1
 # 0 "" 2
 # 765 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr2,xr2,AA
 # 0 "" 2
 # 767 "h264dsputil.c" 1
	Q8ADD xr4,xr8,xr3,SS
 # 0 "" 2
 # 768 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr10,xr10,AA
 # 0 "" 2
 # 769 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr9,xr9,AA
 # 0 "" 2
 # 772 "h264dsputil.c" 1
	Q8ADD xr10,xr10,xr12,AA
 # 0 "" 2
 # 773 "h264dsputil.c" 1
	S32STD xr10,$4,0
 # 0 "" 2
 # 774 "h264dsputil.c" 1
	Q8ADD xr9,xr9,xr2,AA
 # 0 "" 2
 # 775 "h264dsputil.c" 1
	S32STDV xr9,$4,$5,0
 # 0 "" 2
#NO_APP
	addiu	$6,$6,1
	addiu	$3,$3,4
	.set	noreorder
	.set	nomacro
	bne	$6,$7,$L24
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	h264_v_loop_filter_chroma_intra_mxu
	.align	2
	.ent	h264_h_loop_filter_chroma_intra_mxu
	.type	h264_h_loop_filter_chroma_intra_mxu, @function
h264_h_loop_filter_chroma_intra_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$10,$4
	move	$24,$5
#APP
 # 786 "h264dsputil.c" 1
	S32I2M xr14,$7
 # 0 "" 2
 # 787 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn0
 # 0 "" 2
 # 788 "h264dsputil.c" 1
	S32SFL xr0,xr14,xr14,xr14,ptn3
 # 0 "" 2
 # 789 "h264dsputil.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 790 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn0
 # 0 "" 2
 # 791 "h264dsputil.c" 1
	S32SFL xr0,xr13,xr13,xr13,ptn3
 # 0 "" 2
#NO_APP
	li	$2,16842752			# 0x1010000
	ori	$2,$2,0x101
#APP
 # 792 "h264dsputil.c" 1
	S32I2M xr8,$2
 # 0 "" 2
#NO_APP
	sll	$3,$5,1
	addiu	$2,$3,-1
	addu	$2,$5,$2
	addu	$14,$4,$2
	sll	$12,$5,2
	addu	$13,$4,$5
	addu	$11,$4,$3
	move	$15,$0
	li	$25,2			# 0x2
$L28:
#APP
 # 796 "h264dsputil.c" 1
	S32LDD xr2,$10,0
 # 0 "" 2
 # 797 "h264dsputil.c" 1
	S32LDD xr1,$10,-4
 # 0 "" 2
#NO_APP
	move	$2,$10
#APP
 # 798 "h264dsputil.c" 1
	S32LDIV xr4,$2,$24,0
 # 0 "" 2
 # 799 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 801 "h264dsputil.c" 1
	S32SFL xr6,xr4,xr2,xr12,ptn0
 # 0 "" 2
 # 802 "h264dsputil.c" 1
	S32SFL xr5,xr3,xr1,xr7,ptn0
 # 0 "" 2
 # 804 "h264dsputil.c" 1
	S32LDIV xr2,$2,$24,0
 # 0 "" 2
 # 805 "h264dsputil.c" 1
	S32LDD xr1,$2,-4
 # 0 "" 2
 # 806 "h264dsputil.c" 1
	S32LDIV xr4,$2,$24,0
 # 0 "" 2
 # 807 "h264dsputil.c" 1
	S32LDD xr3,$2,-4
 # 0 "" 2
 # 809 "h264dsputil.c" 1
	S32SFL xr4,xr4,xr2,xr2,ptn0
 # 0 "" 2
 # 810 "h264dsputil.c" 1
	S32SFL xr3,xr3,xr1,xr1,ptn0
 # 0 "" 2
 # 812 "h264dsputil.c" 1
	S32SFL xr10,xr3,xr5,xr11,ptn3
 # 0 "" 2
 # 813 "h264dsputil.c" 1
	S32SFL xr1,xr2,xr12,xr9,ptn3
 # 0 "" 2
 # 815 "h264dsputil.c" 1
	Q8ABD xr3,xr10,xr9
 # 0 "" 2
 # 816 "h264dsputil.c" 1
	Q8ABD xr4,xr11,xr10
 # 0 "" 2
 # 817 "h264dsputil.c" 1
	Q8ABD xr5,xr1,xr9
 # 0 "" 2
 # 819 "h264dsputil.c" 1
	Q8ADDE xr6,xr3,xr13,xr7,SS
 # 0 "" 2
 # 820 "h264dsputil.c" 1
	Q8ADDE xr3,xr4,xr14,xr4,SS
 # 0 "" 2
 # 821 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 822 "h264dsputil.c" 1
	Q16SLR xr3,xr3,xr4,xr4,15
 # 0 "" 2
 # 823 "h264dsputil.c" 1
	Q16SAT xr4,xr3,xr4
 # 0 "" 2
 # 824 "h264dsputil.c" 1
	Q16SAT xr3,xr6,xr7
 # 0 "" 2
 # 826 "h264dsputil.c" 1
	Q8ADDE xr6,xr5,xr14,xr7,SS
 # 0 "" 2
 # 827 "h264dsputil.c" 1
	Q16SLR xr6,xr6,xr7,xr7,15
 # 0 "" 2
 # 828 "h264dsputil.c" 1
	Q16SAT xr5,xr6,xr7
 # 0 "" 2
 # 831 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr4,xr3,AA
 # 0 "" 2
 # 833 "h264dsputil.c" 1
	Q8ADDE xr12,xr11,xr8,xr7,AA
 # 0 "" 2
 # 834 "h264dsputil.c" 1
	Q16SLL xr12,xr12,xr7,xr7,1
 # 0 "" 2
 # 835 "h264dsputil.c" 1
	Q8ACCE xr12,xr10,xr1,xr7,AA
 # 0 "" 2
 # 837 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr5,xr3,AA
 # 0 "" 2
 # 838 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr8,xr6,AA
 # 0 "" 2
 # 839 "h264dsputil.c" 1
	Q16SLL xr2,xr2,xr6,xr6,1
 # 0 "" 2
 # 840 "h264dsputil.c" 1
	Q8ACCE xr2,xr9,xr11,xr6,AA
 # 0 "" 2
 # 842 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr7,xr7,2
 # 0 "" 2
 # 843 "h264dsputil.c" 1
	S32SFL xr0,xr12,xr7,xr12,ptn1
 # 0 "" 2
 # 844 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr12,xr12,AA
 # 0 "" 2
 # 845 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr6,xr6,2
 # 0 "" 2
 # 846 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr6,xr2,ptn1
 # 0 "" 2
 # 847 "h264dsputil.c" 1
	Q8MADL xr0,xr3,xr2,xr2,AA
 # 0 "" 2
 # 849 "h264dsputil.c" 1
	Q8ADD xr4,xr8,xr3,SS
 # 0 "" 2
 # 850 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr10,xr10,AA
 # 0 "" 2
 # 851 "h264dsputil.c" 1
	Q8MADL xr0,xr4,xr9,xr9,AA
 # 0 "" 2
 # 853 "h264dsputil.c" 1
	Q8ADD xr10,xr10,xr12,AA
 # 0 "" 2
 # 854 "h264dsputil.c" 1
	Q8ADD xr9,xr9,xr2,AA
 # 0 "" 2
 # 856 "h264dsputil.c" 1
	S32M2I xr10, $2
 # 0 "" 2
 # 857 "h264dsputil.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	srl	$8,$2,24
	srl	$9,$3,24
	srl	$4,$2,8
	srl	$5,$3,8
	srl	$6,$2,16
	srl	$7,$3,16
	addiu	$15,$15,1
	sb	$2,-1($10)
	sb	$3,0($10)
	sb	$4,-1($13)
	sb	$5,0($13)
	addu	$10,$10,$12
	sb	$6,-1($11)
	sb	$7,0($11)
	addu	$13,$13,$12
	sb	$8,0($14)
	sb	$9,1($14)
	addu	$11,$11,$12
	.set	noreorder
	.set	nomacro
	bne	$15,$25,$L28
	addu	$14,$14,$12
	.set	macro
	.set	reorder

	j	$31
	.end	h264_h_loop_filter_chroma_intra_mxu
	.align	2
	.ent	put_h264_qpel4_h_lowpass_mxu
	.type	put_h264_qpel4_h_lowpass_mxu, @function
put_h264_qpel4_h_lowpass_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$9,$5,-2
	andi	$2,$5,0x3
	li	$3,4			# 0x4
	li	$8,-4			# 0xfffffffffffffffc
	andi	$10,$9,0x3
	subu	$11,$3,$2
	li	$2,17104896			# 0x1050000
	and	$5,$5,$8
	subu	$10,$3,$10
	and	$9,$9,$8
	ori	$2,$2,0x105
#APP
 # 1329 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 1330 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 1331 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$2,$0
	subu	$4,$4,$6
	li	$3,3			# 0x3
	li	$8,4			# 0x4
$L32:
#APP
 # 1336 "h264dsputil.c" 1
	S32LDD xr1,$9,0
 # 0 "" 2
 # 1337 "h264dsputil.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 1338 "h264dsputil.c" 1
	S32LDD xr3,$9,8
 # 0 "" 2
#NO_APP
	addu	$9,$9,$7
#APP
 # 1340 "h264dsputil.c" 1
	pref 0,0($9)
 # 0 "" 2
 # 1342 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$10
 # 0 "" 2
 # 1343 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$10
 # 0 "" 2
 # 1345 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 1347 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1348 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1350 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1351 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1352 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1354 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1355 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1356 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1357 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1359 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1361 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1362 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1363 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1364 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1366 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1368 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1369 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 1373 "h264dsputil.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1374 "h264dsputil.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1375 "h264dsputil.c" 1
	S32LDD xr3,$5,8
 # 0 "" 2
#NO_APP
	addu	$5,$5,$7
#APP
 # 1377 "h264dsputil.c" 1
	pref 0,0($5)
 # 0 "" 2
 # 1379 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 1380 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 1382 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 1384 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1385 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1387 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1388 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1389 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1391 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1392 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1393 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1394 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1396 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1398 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1399 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1400 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1401 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1403 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1405 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1406 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 1409 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 1410 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 1412 "h264dsputil.c" 1
	S32SDIV xr1,$4,$6,0
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	bne	$2,$8,$L32
	j	$31
	.end	put_h264_qpel4_h_lowpass_mxu
	.align	2
	.ent	put_h264_qpel4_hv_lowpass_mxu
	.type	put_h264_qpel4_hv_lowpass_mxu, @function
put_h264_qpel4_hv_lowpass_mxu:
	.set	nomips16
	.frame	$sp,24,$31		# vars= 16, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-24
	.cprestore	0
	lw	$12,44($sp)
	li	$10,-4			# 0xfffffffffffffffc
	addiu	$2,$12,1
	sll	$2,$2,1
	sll	$8,$12,1
	addiu	$9,$6,-2
	subu	$2,$6,$2
	and	$2,$2,$10
	subu	$8,$6,$8
	andi	$9,$9,0x3
	li	$3,4			# 0x4
	andi	$6,$6,0x3
	and	$8,$8,$10
	subu	$6,$3,$6
	sw	$2,8($sp)
	subu	$3,$3,$9
	li	$2,17104896			# 0x1050000
	sw	$8,12($sp)
	sw	$3,16($sp)
	sw	$6,20($sp)
	move	$15,$4
	lw	$10,40($sp)
	ori	$2,$2,0x105
#APP
 # 1515 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 1516 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	move	$9,$0
	addiu	$8,$5,-4
	addiu	$14,$10,-8
	addiu	$11,$sp,16
	addiu	$25,$sp,8
	li	$13,3			# 0x3
	li	$24,9			# 0x9
$L36:
	move	$4,$25
	move	$6,$11
$L37:
	lw	$2,0($4)
#APP
 # 1521 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 1522 "h264dsputil.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 1523 "h264dsputil.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
#NO_APP
	addu	$2,$12,$2
	sw	$2,0($4)
#APP
 # 1525 "h264dsputil.c" 1
	pref 0,0($2)
 # 0 "" 2
#NO_APP
	lw	$3,0($6)
#APP
 # 1527 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$3
 # 0 "" 2
 # 1528 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$3
 # 0 "" 2
 # 1530 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$13
 # 0 "" 2
 # 1532 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1533 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1535 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1536 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1537 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1539 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1540 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1541 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1542 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1544 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1546 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1547 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1548 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1549 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1551 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1553 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1554 "h264dsputil.c" 1
	S32SDI xr1,$8,4
 # 0 "" 2
#NO_APP
	addiu	$4,$4,4
	.set	noreorder
	.set	nomacro
	bne	$4,$11,$L37
	addiu	$6,$6,4
	.set	macro
	.set	reorder

	addiu	$9,$9,1
	.set	noreorder
	.set	nomacro
	bne	$9,$24,$L36
	addu	$8,$8,$14
	.set	macro
	.set	reorder

	li	$2,1310720			# 0x140000
	ori	$2,$2,0x14
#APP
 # 1560 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,327680			# 0x50000
	ori	$3,$3,0x5
#APP
 # 1561 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$4,512			# 0x200
#APP
 # 1562 "h264dsputil.c" 1
	S32I2M xr13,$4
 # 0 "" 2
#NO_APP
	li	$2,65536			# 0x10000
	ori	$2,$2,0x1
#APP
 # 1563 "h264dsputil.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	sll	$3,$10,1
	subu	$5,$5,$3
	move	$6,$0
	li	$8,2			# 0x2
	li	$9,4			# 0x4
	addu	$5,$5,$10
	move	$4,$15
	move	$3,$0
$L39:
	sll	$2,$3,2
	addu	$2,$2,$5
#APP
 # 1570 "h264dsputil.c" 1
	S32LDIV xr1,$2,$10,0
 # 0 "" 2
 # 1572 "h264dsputil.c" 1
	S32LDIV xr2,$2,$10,0
 # 0 "" 2
 # 1574 "h264dsputil.c" 1
	S32LDIV xr3,$2,$10,0
 # 0 "" 2
 # 1576 "h264dsputil.c" 1
	D16MUL xr10,xr2,xr14,xr9,WW
 # 0 "" 2
 # 1577 "h264dsputil.c" 1
	D16MUL xr8,xr3,xr15,xr7,WW
 # 0 "" 2
 # 1580 "h264dsputil.c" 1
	S32LDIV xr4,$2,$10,0
 # 0 "" 2
 # 1582 "h264dsputil.c" 1
	S32LDIV xr5,$2,$10,0
 # 0 "" 2
 # 1583 "h264dsputil.c" 1
	S32LDDV xr12,$2,$10,0
 # 0 "" 2
 # 1585 "h264dsputil.c" 1
	D16MUL xr3,xr5,xr14,xr2,WW
 # 0 "" 2
 # 1586 "h264dsputil.c" 1
	D16MUL xr5,xr4,xr15,xr4,WW
 # 0 "" 2
 # 1590 "h264dsputil.c" 1
	Q16ADD xr12,xr1,xr12,xr0,AA,WW
 # 0 "" 2
 # 1591 "h264dsputil.c" 1
	D16MUL xr12,xr12,xr11,xr1,WW
 # 0 "" 2
 # 1594 "h264dsputil.c" 1
	D32ACC xr12,xr8,xr10,xr0,SS
 # 0 "" 2
 # 1595 "h264dsputil.c" 1
	D32ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 1598 "h264dsputil.c" 1
	D32ACC xr12,xr5,xr3,xr0,SS
 # 0 "" 2
 # 1599 "h264dsputil.c" 1
	D32ACC xr1,xr4,xr2,xr0,SS
 # 0 "" 2
 # 1602 "h264dsputil.c" 1
	D32ADD xr12,xr12,xr13,xr0,AA
 # 0 "" 2
 # 1603 "h264dsputil.c" 1
	D32ADD xr1,xr1,xr13,xr0,AA
 # 0 "" 2
 # 1606 "h264dsputil.c" 1
	D32SAR xr2,xr12,xr1,xr1,10
 # 0 "" 2
 # 1607 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr1,xr1,ptn3
 # 0 "" 2
 # 1608 "h264dsputil.c" 1
	Q16SAT xr1,xr0,xr1
 # 0 "" 2
 # 1610 "h264dsputil.c" 1
	S32M2I xr1, $2
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	sh	$2,0($4)
	.set	noreorder
	.set	nomacro
	bne	$3,$8,$L39
	addiu	$4,$4,2
	.set	macro
	.set	reorder

	addiu	$6,$6,1
	.set	noreorder
	.set	nomacro
	beq	$6,$9,$L42
	addu	$15,$15,$7
	.set	macro
	.set	reorder

	addu	$5,$5,$10
	move	$4,$15
	.set	noreorder
	.set	nomacro
	b	$L39
	move	$3,$0
	.set	macro
	.set	reorder

$L42:
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,24
	.set	macro
	.set	reorder

	.end	put_h264_qpel4_hv_lowpass_mxu
	.align	2
	.ent	put_h264_qpel8_h_lowpass_mxu
	.type	put_h264_qpel8_h_lowpass_mxu, @function
put_h264_qpel8_h_lowpass_mxu:
	.set	nomips16
	.frame	$sp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x00010000,-4
	.fmask	0x00000000,0
	addiu	$9,$5,-2
	andi	$2,$5,0x3
	li	$3,4			# 0x4
	andi	$10,$9,0x3
	li	$8,-4			# 0xfffffffffffffffc
	addiu	$sp,$sp,-8
	subu	$24,$3,$2
	li	$2,17104896			# 0x1050000
	sw	$16,4($sp)
	and	$5,$5,$8
	subu	$15,$3,$10
	and	$9,$9,$8
	ori	$2,$2,0x105
#APP
 # 1631 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 1632 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 1633 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$11,$0
	addiu	$4,$4,-4
	addiu	$6,$6,-8
	addu	$13,$9,$7
	addu	$12,$5,$7
	li	$25,3			# 0x3
	.set	noreorder
	.set	nomacro
	b	$L46
	li	$16,8			# 0x8
	.set	macro
	.set	reorder

$L51:
	addu	$9,$9,$7
	addu	$5,$5,$7
	addu	$4,$4,$6
$L46:
	move	$3,$9
	move	$2,$5
	move	$10,$13
	move	$8,$12
	addiu	$14,$5,8
$L47:
#APP
 # 1639 "h264dsputil.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 1640 "h264dsputil.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1641 "h264dsputil.c" 1
	S32LDD xr3,$3,8
 # 0 "" 2
 # 1642 "h264dsputil.c" 1
	pref 0,0($10)
 # 0 "" 2
#NO_APP
	addiu	$3,$3,4
#APP
 # 1645 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$15
 # 0 "" 2
 # 1646 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$15
 # 0 "" 2
 # 1648 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$25
 # 0 "" 2
 # 1650 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1651 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1653 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1654 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1655 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1657 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1658 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1659 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1660 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1662 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1664 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1665 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1666 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1667 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1669 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1671 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1672 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 1676 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 1677 "h264dsputil.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 1678 "h264dsputil.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
 # 1679 "h264dsputil.c" 1
	pref 0,0($8)
 # 0 "" 2
#NO_APP
	addiu	$2,$2,4
#APP
 # 1682 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$24
 # 0 "" 2
 # 1683 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$24
 # 0 "" 2
 # 1685 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$25
 # 0 "" 2
 # 1687 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1688 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1690 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1691 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1692 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1694 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1695 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1696 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1697 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1699 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1701 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1702 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1703 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1704 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1706 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1708 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1709 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 1712 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 1713 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 1715 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$10,$10,4
	.set	noreorder
	.set	nomacro
	bne	$14,$2,$L47
	addiu	$8,$8,4
	.set	macro
	.set	reorder

	addiu	$11,$11,1
	addu	$13,$13,$7
	.set	noreorder
	.set	nomacro
	bne	$11,$16,$L51
	addu	$12,$12,$7
	.set	macro
	.set	reorder

	lw	$16,4($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,8
	.set	macro
	.set	reorder

	.end	put_h264_qpel8_h_lowpass_mxu
	.align	2
	.ent	put_h264_qpel8_v_lowpass_mxu
	.type	put_h264_qpel8_v_lowpass_mxu, @function
put_h264_qpel8_v_lowpass_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sll	$2,$7,1
	subu	$5,$5,$2
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$9,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,336855040			# 0x14140000
	and	$5,$5,$3
	ori	$2,$2,0x1414
#APP
 # 1735 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 1736 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 1737 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$10,$0
	addiu	$4,$4,-4
	addiu	$6,$6,-8
	li	$11,2			# 0x2
	li	$12,8			# 0x8
$L53:
	move	$8,$0
	sll	$2,$8,2
$L58:
	addu	$2,$5,$2
	addiu	$3,$2,4
#APP
 # 1744 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 1745 "h264dsputil.c" 1
	S32LDD xr2,$3,0
 # 0 "" 2
 # 1747 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1748 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1750 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$9
 # 0 "" 2
 # 1751 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$9
 # 0 "" 2
 # 1753 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1754 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1755 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 1757 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$9
 # 0 "" 2
 # 1759 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 1761 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1762 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1763 "h264dsputil.c" 1
	S32LDIV xr2,$2,$7,0
 # 0 "" 2
 # 1764 "h264dsputil.c" 1
	S32LDIV xr5,$3,$7,0
 # 0 "" 2
 # 1766 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$9
 # 0 "" 2
 # 1770 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$9
 # 0 "" 2
 # 1772 "h264dsputil.c" 1
	S32LDIV xr11,$2,$7,0
 # 0 "" 2
 # 1773 "h264dsputil.c" 1
	S32LDIV xr12,$3,$7,0
 # 0 "" 2
 # 1774 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 1775 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 1779 "h264dsputil.c" 1
	S32ALN xr2,xr12,xr11,$9
 # 0 "" 2
 # 1782 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 1785 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 1786 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 1789 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 1790 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 1793 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 1794 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 1797 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 1798 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 1800 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,1
	.set	noreorder
	.set	nomacro
	bne	$8,$11,$L58
	sll	$2,$8,2
	.set	macro
	.set	reorder

	addiu	$10,$10,1
	.set	noreorder
	.set	nomacro
	beq	$10,$12,$L59
	addu	$5,$5,$7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	b	$L53
	addu	$4,$4,$6
	.set	macro
	.set	reorder

$L59:
	j	$31
	.end	put_h264_qpel8_v_lowpass_mxu
	.align	2
	.ent	put_h264_qpel8_hv_lowpass_mxu
	.type	put_h264_qpel8_hv_lowpass_mxu, @function
put_h264_qpel8_hv_lowpass_mxu:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 32, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-40
	.cprestore	0
	lw	$12,60($sp)
	li	$8,-4			# 0xfffffffffffffffc
	addiu	$2,$12,1
	sll	$10,$12,1
	sll	$2,$2,1
	subu	$2,$6,$2
	subu	$10,$6,$10
	addiu	$3,$6,-2
	and	$10,$10,$8
	and	$2,$2,$8
	andi	$3,$3,0x3
	li	$9,4			# 0x4
	andi	$6,$6,0x3
	subu	$6,$9,$6
	addiu	$8,$2,4
	subu	$9,$9,$3
	sw	$2,8($sp)
	addiu	$3,$10,4
	li	$2,17104896			# 0x1050000
	sw	$9,32($sp)
	sw	$9,24($sp)
	sw	$8,16($sp)
	sw	$3,20($sp)
	sw	$6,36($sp)
	move	$14,$4
	sw	$10,12($sp)
	sw	$6,28($sp)
	lw	$9,56($sp)
	ori	$2,$2,0x105
#APP
 # 1827 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 1828 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	move	$10,$0
	addiu	$8,$5,-4
	addiu	$15,$9,-16
	addiu	$11,$sp,24
	addiu	$25,$sp,8
	li	$13,3			# 0x3
	li	$24,13			# 0xd
$L61:
	move	$4,$25
	move	$6,$11
$L62:
	lw	$2,0($4)
#APP
 # 1833 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 1834 "h264dsputil.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 1835 "h264dsputil.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
#NO_APP
	addu	$2,$12,$2
	sw	$2,0($4)
#APP
 # 1837 "h264dsputil.c" 1
	pref 0,0($2)
 # 0 "" 2
#NO_APP
	lw	$3,0($6)
#APP
 # 1839 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$3
 # 0 "" 2
 # 1840 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$3
 # 0 "" 2
 # 1842 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$13
 # 0 "" 2
 # 1844 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1845 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1847 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1848 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1849 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1851 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1852 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1853 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 1854 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 1856 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 1858 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 1859 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 1860 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 1861 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 1863 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 1865 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 1866 "h264dsputil.c" 1
	S32SDI xr1,$8,4
 # 0 "" 2
#NO_APP
	addiu	$4,$4,4
	.set	noreorder
	.set	nomacro
	bne	$4,$11,$L62
	addiu	$6,$6,4
	.set	macro
	.set	reorder

	addiu	$10,$10,1
	.set	noreorder
	.set	nomacro
	bne	$10,$24,$L61
	addu	$8,$8,$15
	.set	macro
	.set	reorder

	li	$2,1310720			# 0x140000
	ori	$2,$2,0x14
#APP
 # 1871 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,327680			# 0x50000
	ori	$3,$3,0x5
#APP
 # 1872 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$4,512			# 0x200
#APP
 # 1873 "h264dsputil.c" 1
	S32I2M xr13,$4
 # 0 "" 2
#NO_APP
	li	$2,65536			# 0x10000
	ori	$2,$2,0x1
#APP
 # 1874 "h264dsputil.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	sll	$3,$9,1
	subu	$5,$5,$3
	move	$6,$0
	li	$8,4			# 0x4
	li	$10,8			# 0x8
$L66:
	addu	$5,$5,$9
	move	$4,$14
	move	$3,$0
$L64:
	sll	$2,$3,2
	addu	$2,$2,$5
#APP
 # 1881 "h264dsputil.c" 1
	S32LDIV xr1,$2,$9,0
 # 0 "" 2
 # 1883 "h264dsputil.c" 1
	S32LDIV xr2,$2,$9,0
 # 0 "" 2
 # 1885 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 1887 "h264dsputil.c" 1
	D16MUL xr10,xr2,xr14,xr9,WW
 # 0 "" 2
 # 1888 "h264dsputil.c" 1
	D16MUL xr8,xr3,xr15,xr7,WW
 # 0 "" 2
 # 1891 "h264dsputil.c" 1
	S32LDIV xr4,$2,$9,0
 # 0 "" 2
 # 1893 "h264dsputil.c" 1
	S32LDIV xr5,$2,$9,0
 # 0 "" 2
 # 1894 "h264dsputil.c" 1
	S32LDDV xr12,$2,$9,0
 # 0 "" 2
 # 1896 "h264dsputil.c" 1
	D16MUL xr3,xr5,xr14,xr2,WW
 # 0 "" 2
 # 1897 "h264dsputil.c" 1
	D16MUL xr5,xr4,xr15,xr4,WW
 # 0 "" 2
 # 1901 "h264dsputil.c" 1
	Q16ADD xr12,xr1,xr12,xr0,AA,WW
 # 0 "" 2
 # 1902 "h264dsputil.c" 1
	D16MUL xr12,xr12,xr11,xr1,WW
 # 0 "" 2
 # 1905 "h264dsputil.c" 1
	D32ACC xr12,xr8,xr10,xr0,SS
 # 0 "" 2
 # 1906 "h264dsputil.c" 1
	D32ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 1909 "h264dsputil.c" 1
	D32ACC xr12,xr5,xr3,xr0,SS
 # 0 "" 2
 # 1910 "h264dsputil.c" 1
	D32ACC xr1,xr4,xr2,xr0,SS
 # 0 "" 2
 # 1913 "h264dsputil.c" 1
	D32ADD xr12,xr12,xr13,xr0,AA
 # 0 "" 2
 # 1914 "h264dsputil.c" 1
	D32ADD xr1,xr1,xr13,xr0,AA
 # 0 "" 2
 # 1917 "h264dsputil.c" 1
	D32SAR xr2,xr12,xr1,xr1,10
 # 0 "" 2
 # 1918 "h264dsputil.c" 1
	S32SFL xr0,xr2,xr1,xr1,ptn3
 # 0 "" 2
 # 1919 "h264dsputil.c" 1
	Q16SAT xr1,xr0,xr1
 # 0 "" 2
 # 1921 "h264dsputil.c" 1
	S32M2I xr1, $2
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	sh	$2,0($4)
	.set	noreorder
	.set	nomacro
	bne	$3,$8,$L64
	addiu	$4,$4,2
	.set	macro
	.set	reorder

	addiu	$6,$6,1
	.set	noreorder
	.set	nomacro
	bne	$6,$10,$L66
	addu	$14,$14,$7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,40
	.set	macro
	.set	reorder

	.end	put_h264_qpel8_hv_lowpass_mxu
	.align	2
	.ent	put_h264_qpel16_h_lowpass_mxu
	.type	put_h264_qpel16_h_lowpass_mxu, @function
put_h264_qpel16_h_lowpass_mxu:
	.set	nomips16
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	move	$18,$6
	move	$19,$7
	move	$16,$4
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	move	$17,$5

	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	move	$7,$19

	sll	$2,$19,3
	sll	$3,$18,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	move	$7,$19

	lw	$28,16($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	.option	pic0
	j	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_h_lowpass_mxu
	.align	2
	.ent	put_h264_qpel16_hv_lowpass_mxu
	.type	put_h264_qpel16_hv_lowpass_mxu, @function
put_h264_qpel16_hv_lowpass_mxu:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cprestore	24
	lw	$18,84($sp)
	lw	$20,80($sp)
	move	$19,$7
	addiu	$22,$5,16
	move	$16,$4
	move	$17,$6
	move	$21,$5
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$18,20($sp)

	addiu	$4,$16,8
	move	$5,$22
	addiu	$6,$17,8
	move	$7,$19
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$18,20($sp)

	sll	$2,$18,3
	sll	$3,$19,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$5,$21
	move	$4,$16
	move	$6,$17
	move	$7,$19
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$18,20($sp)

	lw	$28,24($sp)
	sw	$20,80($sp)
	sw	$18,84($sp)
	addiu	$4,$16,8
	move	$5,$22
	addiu	$6,$17,8
	move	$7,$19
	lw	$31,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_hv_lowpass_mxu
	.align	2
	.ent	put_h264_qpel4_h_lowpass_avg_mxu
	.type	put_h264_qpel4_h_lowpass_avg_mxu, @function
put_h264_qpel4_h_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$3,16($sp)
	addiu	$10,$5,-2
	addu	$3,$5,$3
	li	$2,4			# 0x4
	andi	$11,$3,0x3
	andi	$12,$10,0x3
	andi	$9,$5,0x3
	li	$8,-4			# 0xfffffffffffffffc
	subu	$13,$2,$9
	subu	$14,$2,$11
	subu	$11,$2,$12
	li	$2,17104896			# 0x1050000
	and	$9,$3,$8
	and	$10,$10,$8
	and	$5,$5,$8
	ori	$2,$2,0x105
#APP
 # 1973 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 1974 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 1975 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$2,$0
	li	$3,3			# 0x3
	li	$8,4			# 0x4
$L75:
#APP
 # 1979 "h264dsputil.c" 1
	S32LDD xr1,$10,0
 # 0 "" 2
 # 1980 "h264dsputil.c" 1
	S32LDD xr2,$10,4
 # 0 "" 2
 # 1981 "h264dsputil.c" 1
	S32LDD xr3,$10,8
 # 0 "" 2
#NO_APP
	addu	$10,$10,$7
#APP
 # 1983 "h264dsputil.c" 1
	pref 0,0($10)
 # 0 "" 2
 # 1985 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 1986 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 1988 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 1990 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 1991 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 1993 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 1994 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 1995 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 1997 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 1998 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 1999 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2000 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2002 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2004 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2005 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2006 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2007 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2009 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2011 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2012 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 2016 "h264dsputil.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2017 "h264dsputil.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2018 "h264dsputil.c" 1
	S32LDD xr3,$5,8
 # 0 "" 2
#NO_APP
	addu	$5,$5,$7
#APP
 # 2020 "h264dsputil.c" 1
	pref 0,0($5)
 # 0 "" 2
 # 2022 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$13
 # 0 "" 2
 # 2023 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$13
 # 0 "" 2
 # 2026 "h264dsputil.c" 1
	S32LDD xr1,$9,0
 # 0 "" 2
 # 2027 "h264dsputil.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
#NO_APP
	addu	$9,$9,$7
#APP
 # 2031 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 2034 "h264dsputil.c" 1
	S32ALN xr9,xr2,xr1,$14
 # 0 "" 2
 # 2036 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2037 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2039 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2040 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2041 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2043 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2044 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2045 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2046 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2048 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2050 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2051 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2052 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2053 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2055 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2057 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2058 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 2061 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 2062 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 2065 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr9
 # 0 "" 2
 # 2067 "h264dsputil.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	.set	noreorder
	.set	nomacro
	bne	$2,$8,$L75
	addu	$4,$4,$6
	.set	macro
	.set	reorder

	j	$31
	.end	put_h264_qpel4_h_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel4_v_lowpass_avg_mxu
	.type	put_h264_qpel4_v_lowpass_avg_mxu, @function
put_h264_qpel4_v_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$8,$7
	sll	$7,$7,1
	subu	$5,$5,$7
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$9,$2,$3
	li	$2,336855040			# 0x14140000
	lw	$10,16($sp)
	ori	$2,$2,0x1414
#APP
 # 2085 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 2086 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2087 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,-4			# 0xfffffffffffffffc
	and	$5,$5,$3
	subu	$7,$8,$7
	addu	$7,$7,$5
	subu	$4,$4,$6
	move	$5,$0
	move	$12,$0
	li	$11,4			# 0x4
$L81:
	addiu	$3,$7,4
	move	$2,$7
#APP
 # 2095 "h264dsputil.c" 1
	S32LDIV xr1,$2,$8,0
 # 0 "" 2
 # 2096 "h264dsputil.c" 1
	S32LDIV xr2,$3,$8,0
 # 0 "" 2
 # 2098 "h264dsputil.c" 1
	S32LDIV xr3,$2,$8,0
 # 0 "" 2
 # 2099 "h264dsputil.c" 1
	S32LDIV xr4,$3,$8,0
 # 0 "" 2
 # 2101 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$9
 # 0 "" 2
 # 2102 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$9
 # 0 "" 2
 # 2104 "h264dsputil.c" 1
	S32LDIV xr3,$2,$8,0
 # 0 "" 2
 # 2105 "h264dsputil.c" 1
	S32LDIV xr4,$3,$8,0
 # 0 "" 2
 # 2106 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 2108 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$9
 # 0 "" 2
#NO_APP
	bne	$10,$0,$L79
#APP
 # 2111 "h264dsputil.c" 1
	S32ALN xr12,xr3,xr0,$12
 # 0 "" 2
#NO_APP
$L79:
#APP
 # 2113 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 2115 "h264dsputil.c" 1
	S32LDIV xr3,$2,$8,0
 # 0 "" 2
 # 2116 "h264dsputil.c" 1
	S32LDIV xr4,$3,$8,0
 # 0 "" 2
 # 2117 "h264dsputil.c" 1
	S32LDIV xr2,$2,$8,0
 # 0 "" 2
 # 2118 "h264dsputil.c" 1
	S32LDIV xr5,$3,$8,0
 # 0 "" 2
 # 2120 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$9
 # 0 "" 2
#NO_APP
	beq	$10,$0,$L80
#APP
 # 2123 "h264dsputil.c" 1
	S32ALN xr12,xr4,xr0,$12
 # 0 "" 2
#NO_APP
$L80:
#APP
 # 2127 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$9
 # 0 "" 2
 # 2129 "h264dsputil.c" 1
	S32LDIV xr11,$2,$8,0
 # 0 "" 2
 # 2130 "h264dsputil.c" 1
	S32LDIV xr2,$3,$8,0
 # 0 "" 2
 # 2131 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 2132 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 2136 "h264dsputil.c" 1
	S32ALN xr2,xr2,xr11,$9
 # 0 "" 2
 # 2139 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 2142 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 2143 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 2146 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 2147 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 2150 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 2151 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 2154 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 2155 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 2159 "h264dsputil.c" 1
	Q8AVGR xr1,xr12,xr1
 # 0 "" 2
 # 2161 "h264dsputil.c" 1
	S32SDIV xr1,$4,$6,0
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	.set	noreorder
	.set	nomacro
	bne	$5,$11,$L81
	addu	$7,$7,$8
	.set	macro
	.set	reorder

	j	$31
	.end	put_h264_qpel4_v_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel8_h_lowpass_avg_mxu
	.type	put_h264_qpel8_h_lowpass_avg_mxu, @function
put_h264_qpel8_h_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,16,$31		# vars= 0, regs= 4/0, args= 0, gp= 0
	.mask	0x000f0000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-16
	lw	$3,32($sp)
	addiu	$10,$5,-2
	addu	$3,$5,$3
	li	$2,4			# 0x4
	andi	$11,$10,0x3
	andi	$12,$5,0x3
	andi	$9,$3,0x3
	li	$8,-4			# 0xfffffffffffffffc
	sw	$17,4($sp)
	sw	$16,0($sp)
	subu	$17,$2,$9
	subu	$16,$2,$11
	subu	$25,$2,$12
	li	$2,17104896			# 0x1050000
	sw	$19,12($sp)
	sw	$18,8($sp)
	and	$13,$3,$8
	and	$10,$10,$8
	and	$5,$5,$8
	ori	$2,$2,0x105
#APP
 # 2181 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 2182 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2183 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$14,$0
	addiu	$19,$6,-8
	addiu	$4,$4,-4
	addu	$24,$10,$7
	addu	$15,$5,$7
	li	$6,3			# 0x3
	.set	noreorder
	.set	nomacro
	b	$L85
	li	$18,8			# 0x8
	.set	macro
	.set	reorder

$L90:
	addu	$13,$13,$7
	addu	$10,$10,$7
	addu	$5,$5,$7
	addu	$4,$4,$19
$L85:
	move	$9,$10
	move	$12,$24
	move	$11,$15
	move	$8,$0
$L86:
	addu	$3,$8,$13
	addu	$2,$8,$5
#APP
 # 2189 "h264dsputil.c" 1
	S32LDD xr1,$9,0
 # 0 "" 2
 # 2190 "h264dsputil.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 2191 "h264dsputil.c" 1
	S32LDD xr3,$9,8
 # 0 "" 2
 # 2192 "h264dsputil.c" 1
	pref 0,0($12)
 # 0 "" 2
#NO_APP
	addiu	$9,$9,4
#APP
 # 2195 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$16
 # 0 "" 2
 # 2196 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$16
 # 0 "" 2
 # 2198 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$6
 # 0 "" 2
 # 2200 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2201 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2203 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2204 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2205 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2207 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2208 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2209 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2210 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2212 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2214 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2215 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2216 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2217 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2219 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2221 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2222 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 2226 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 2227 "h264dsputil.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 2228 "h264dsputil.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
 # 2229 "h264dsputil.c" 1
	pref 0,0($11)
 # 0 "" 2
 # 2232 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$25
 # 0 "" 2
 # 2233 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$25
 # 0 "" 2
 # 2236 "h264dsputil.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 2237 "h264dsputil.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2241 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$6
 # 0 "" 2
 # 2244 "h264dsputil.c" 1
	S32ALN xr9,xr2,xr1,$17
 # 0 "" 2
 # 2246 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2247 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2249 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2250 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2251 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2253 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2254 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2255 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2256 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2258 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2260 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2261 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2262 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2263 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2265 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2267 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2268 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 2271 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 2272 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 2275 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr9
 # 0 "" 2
 # 2276 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,4
	addiu	$12,$12,4
	.set	noreorder
	.set	nomacro
	bne	$8,$18,$L86
	addiu	$11,$11,4
	.set	macro
	.set	reorder

	addiu	$14,$14,1
	addu	$24,$24,$7
	.set	noreorder
	.set	nomacro
	bne	$14,$18,$L90
	addu	$15,$15,$7
	.set	macro
	.set	reorder

	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,16
	.set	macro
	.set	reorder

	.end	put_h264_qpel8_h_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel8_v_lowpass_avg_mxu
	.type	put_h264_qpel8_v_lowpass_avg_mxu, @function
put_h264_qpel8_v_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sll	$2,$7,1
	subu	$5,$5,$2
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$9,$2,$3
	li	$2,-4			# 0xfffffffffffffffc
	and	$5,$5,$2
	li	$2,336855040			# 0x14140000
	lw	$11,16($sp)
	ori	$2,$2,0x1414
#APP
 # 2297 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 2298 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2299 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$10,$0
	addiu	$4,$4,-4
	addiu	$6,$6,-8
	move	$13,$0
	li	$12,2			# 0x2
	li	$14,8			# 0x8
$L92:
	move	$8,$0
	sll	$2,$8,2
$L99:
	addu	$2,$5,$2
	addiu	$3,$2,4
#APP
 # 2306 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 2307 "h264dsputil.c" 1
	S32LDD xr2,$3,0
 # 0 "" 2
 # 2309 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 2310 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 2312 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$9
 # 0 "" 2
 # 2313 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$9
 # 0 "" 2
 # 2315 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 2316 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 2317 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 2319 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$9
 # 0 "" 2
#NO_APP
	bne	$11,$0,$L93
#APP
 # 2321 "h264dsputil.c" 1
	S32ALN xr12,xr3,xr0,$13
 # 0 "" 2
#NO_APP
$L93:
#APP
 # 2323 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 2325 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 2326 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 2327 "h264dsputil.c" 1
	S32LDIV xr2,$2,$7,0
 # 0 "" 2
 # 2328 "h264dsputil.c" 1
	S32LDIV xr5,$3,$7,0
 # 0 "" 2
 # 2330 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$9
 # 0 "" 2
#NO_APP
	beq	$11,$0,$L94
#APP
 # 2332 "h264dsputil.c" 1
	S32ALN xr12,xr4,xr0,$13
 # 0 "" 2
#NO_APP
$L94:
#APP
 # 2336 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$9
 # 0 "" 2
 # 2338 "h264dsputil.c" 1
	S32LDIV xr11,$2,$7,0
 # 0 "" 2
 # 2339 "h264dsputil.c" 1
	S32LDIV xr2,$3,$7,0
 # 0 "" 2
 # 2340 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 2341 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 2345 "h264dsputil.c" 1
	S32ALN xr2,xr2,xr11,$9
 # 0 "" 2
 # 2348 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 2351 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 2352 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 2355 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 2356 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 2359 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 2360 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 2363 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 2364 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 2365 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr12
 # 0 "" 2
 # 2367 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,1
	.set	noreorder
	.set	nomacro
	bne	$8,$12,$L99
	sll	$2,$8,2
	.set	macro
	.set	reorder

	addiu	$10,$10,1
	.set	noreorder
	.set	nomacro
	beq	$10,$14,$L100
	addu	$5,$5,$7
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	b	$L92
	addu	$4,$4,$6
	.set	macro
	.set	reorder

$L100:
	j	$31
	.end	put_h264_qpel8_v_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel16_h_lowpass_avg_mxu
	.type	put_h264_qpel16_h_lowpass_avg_mxu, @function
put_h264_qpel16_h_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 0, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cprestore	24
	lw	$20,72($sp)
	move	$18,$6
	move	$19,$7
	move	$16,$4
	move	$17,$5
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	sll	$2,$19,3
	sll	$3,$18,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	move	$6,$18
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	lw	$28,24($sp)
	sw	$20,72($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	lw	$31,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_h_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel16_v_lowpass_avg_mxu
	.type	put_h264_qpel16_v_lowpass_avg_mxu, @function
put_h264_qpel16_v_lowpass_avg_mxu:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 0, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cprestore	24
	lw	$20,72($sp)
	move	$18,$6
	move	$19,$7
	move	$16,$4
	move	$17,$5
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	sll	$2,$19,3
	sll	$3,$18,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	move	$6,$18
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	sw	$20,16($sp)

	lw	$28,24($sp)
	sw	$20,72($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	lw	$31,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_v_lowpass_avg_mxu
	.align	2
	.ent	put_h264_qpel4_h_lowpass_itpavg_mxu
	.type	put_h264_qpel4_h_lowpass_itpavg_mxu, @function
put_h264_qpel4_h_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$9,$5,-2
	andi	$2,$5,0x3
	li	$3,4			# 0x4
	li	$8,-4			# 0xfffffffffffffffc
	andi	$10,$9,0x3
	subu	$11,$3,$2
	li	$2,17104896			# 0x1050000
	and	$5,$5,$8
	subu	$10,$3,$10
	lw	$12,16($sp)
	and	$9,$9,$8
	ori	$2,$2,0x105
#APP
 # 2410 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 2411 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2412 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	move	$2,$0
	addiu	$6,$6,-4
	li	$3,3			# 0x3
	li	$8,4			# 0x4
$L106:
#APP
 # 2417 "h264dsputil.c" 1
	S32LDD xr1,$9,0
 # 0 "" 2
 # 2418 "h264dsputil.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 2419 "h264dsputil.c" 1
	S32LDD xr3,$9,8
 # 0 "" 2
#NO_APP
	addu	$9,$9,$12
#APP
 # 2421 "h264dsputil.c" 1
	pref 0,0($9)
 # 0 "" 2
 # 2423 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$10
 # 0 "" 2
 # 2424 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$10
 # 0 "" 2
 # 2426 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 2428 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2429 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2431 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2432 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2433 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2435 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2436 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2437 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2438 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2440 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2442 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2443 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2444 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2445 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2447 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2449 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2450 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 2454 "h264dsputil.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2455 "h264dsputil.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2456 "h264dsputil.c" 1
	S32LDD xr3,$5,8
 # 0 "" 2
#NO_APP
	addu	$5,$5,$12
#APP
 # 2458 "h264dsputil.c" 1
	pref 0,0($5)
 # 0 "" 2
 # 2460 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 2461 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 2464 "h264dsputil.c" 1
	S32LDI xr9,$6,4
 # 0 "" 2
 # 2467 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$3
 # 0 "" 2
 # 2469 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2470 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2472 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2473 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2474 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2476 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2477 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2478 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2479 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2481 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2483 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2484 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2485 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2486 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2488 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2490 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2491 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 2494 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 2495 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 2498 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr9
 # 0 "" 2
 # 2500 "h264dsputil.c" 1
	S32STD xr1,$4,0
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	.set	noreorder
	.set	nomacro
	bne	$2,$8,$L106
	addu	$4,$4,$7
	.set	macro
	.set	reorder

	j	$31
	.end	put_h264_qpel4_h_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel4_v_lowpass_itpavg_mxu
	.type	put_h264_qpel4_v_lowpass_itpavg_mxu, @function
put_h264_qpel4_v_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$9,16($sp)
	li	$2,4			# 0x4
	sll	$8,$9,1
	subu	$5,$5,$8
	andi	$3,$5,0x3
	subu	$10,$2,$3
	li	$2,336855040			# 0x14140000
	ori	$2,$2,0x1414
#APP
 # 2519 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 2520 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2521 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,-4			# 0xfffffffffffffffc
	and	$5,$5,$3
	subu	$8,$9,$8
	addu	$8,$8,$5
	subu	$4,$4,$7
	addiu	$6,$6,-4
	move	$5,$0
	li	$11,4			# 0x4
$L110:
	addiu	$3,$8,4
	move	$2,$8
#APP
 # 2529 "h264dsputil.c" 1
	S32LDIV xr1,$2,$9,0
 # 0 "" 2
 # 2530 "h264dsputil.c" 1
	S32LDIV xr2,$3,$9,0
 # 0 "" 2
 # 2532 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2533 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2535 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$10
 # 0 "" 2
 # 2536 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$10
 # 0 "" 2
 # 2538 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2539 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2540 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 2542 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$10
 # 0 "" 2
 # 2544 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 2546 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2547 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2548 "h264dsputil.c" 1
	S32LDIV xr2,$2,$9,0
 # 0 "" 2
 # 2549 "h264dsputil.c" 1
	S32LDIV xr5,$3,$9,0
 # 0 "" 2
 # 2551 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$10
 # 0 "" 2
 # 2553 "h264dsputil.c" 1
	S32LDI xr12,$6,4
 # 0 "" 2
 # 2557 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$10
 # 0 "" 2
 # 2559 "h264dsputil.c" 1
	S32LDIV xr11,$2,$9,0
 # 0 "" 2
 # 2560 "h264dsputil.c" 1
	S32LDIV xr2,$3,$9,0
 # 0 "" 2
 # 2561 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 2562 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 2566 "h264dsputil.c" 1
	S32ALN xr2,xr2,xr11,$10
 # 0 "" 2
 # 2569 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 2572 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 2573 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 2576 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 2577 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 2580 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 2581 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 2584 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 2585 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 2589 "h264dsputil.c" 1
	Q8AVGR xr1,xr12,xr1
 # 0 "" 2
 # 2591 "h264dsputil.c" 1
	S32SDIV xr1,$4,$7,0
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	.set	noreorder
	.set	nomacro
	bne	$5,$11,$L110
	addu	$8,$8,$9
	.set	macro
	.set	reorder

	j	$31
	.end	put_h264_qpel4_v_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel8_h_lowpass_itpavg_mxu
	.type	put_h264_qpel8_h_lowpass_itpavg_mxu, @function
put_h264_qpel8_h_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,16,$31		# vars= 0, regs= 3/0, args= 0, gp= 0
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	addiu	$sp,$sp,-16
	addiu	$9,$5,-2
	andi	$2,$5,0x3
	li	$3,4			# 0x4
	andi	$10,$9,0x3
	li	$8,-4			# 0xfffffffffffffffc
	sw	$16,4($sp)
	subu	$16,$3,$2
	li	$2,17104896			# 0x1050000
	sw	$18,12($sp)
	sw	$17,8($sp)
	and	$5,$5,$8
	subu	$25,$3,$10
	lw	$24,32($sp)
	and	$9,$9,$8
	ori	$2,$2,0x105
#APP
 # 2609 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,336855040			# 0x14140000
	ori	$3,$3,0x501
#APP
 # 2610 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2611 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	lw	$2,36($sp)
	addiu	$17,$7,-8
	addiu	$4,$4,-4
	addiu	$7,$2,-8
	addiu	$6,$6,-4
	addu	$14,$9,$24
	addu	$13,$5,$24
	move	$12,$0
	li	$2,3			# 0x3
	.set	noreorder
	.set	nomacro
	b	$L114
	li	$18,8			# 0x8
	.set	macro
	.set	reorder

$L119:
	addu	$9,$9,$24
	addu	$5,$5,$24
	addu	$4,$4,$17
	addu	$6,$6,$7
$L114:
	move	$8,$9
	move	$3,$5
	move	$11,$14
	move	$10,$13
	addiu	$15,$5,8
$L115:
#APP
 # 2618 "h264dsputil.c" 1
	S32LDD xr1,$8,0
 # 0 "" 2
 # 2619 "h264dsputil.c" 1
	S32LDD xr2,$8,4
 # 0 "" 2
 # 2620 "h264dsputil.c" 1
	S32LDD xr3,$8,8
 # 0 "" 2
 # 2621 "h264dsputil.c" 1
	pref 0,0($11)
 # 0 "" 2
#NO_APP
	addiu	$8,$8,4
#APP
 # 2624 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$25
 # 0 "" 2
 # 2625 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$25
 # 0 "" 2
 # 2627 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$2
 # 0 "" 2
 # 2629 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2630 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2632 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2633 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2634 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2636 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2637 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2638 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2639 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2641 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2643 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2644 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2645 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2646 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2648 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2650 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2651 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr11,AA,WW
 # 0 "" 2
 # 2655 "h264dsputil.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 2656 "h264dsputil.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2657 "h264dsputil.c" 1
	S32LDD xr3,$3,8
 # 0 "" 2
 # 2658 "h264dsputil.c" 1
	pref 0,0($10)
 # 0 "" 2
#NO_APP
	addiu	$3,$3,4
#APP
 # 2661 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$16
 # 0 "" 2
 # 2662 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$16
 # 0 "" 2
 # 2665 "h264dsputil.c" 1
	S32LDI xr9,$6,4
 # 0 "" 2
 # 2668 "h264dsputil.c" 1
	S32ALN xr6,xr5,xr4,$2
 # 0 "" 2
 # 2670 "h264dsputil.c" 1
	D32SLR xr1,xr5,xr0,xr0,8
 # 0 "" 2
 # 2671 "h264dsputil.c" 1
	S32SFL xr0,xr1,xr5,xr7,ptn3
 # 0 "" 2
 # 2673 "h264dsputil.c" 1
	Q8MUL xr2,xr4,xr14,xr1
 # 0 "" 2
 # 2674 "h264dsputil.c" 1
	Q8MUL xr8,xr7,xr15,xr7
 # 0 "" 2
 # 2675 "h264dsputil.c" 1
	Q8MUL xr4,xr6,xr14,xr3
 # 0 "" 2
 # 2677 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr2,xr0,AA,XW
 # 0 "" 2
 # 2678 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr1,xr1,SS,XW
 # 0 "" 2
 # 2679 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr7,SS,XW
 # 0 "" 2
 # 2680 "h264dsputil.c" 1
	S32SFL xr1,xr0,xr1,xr0,ptn3
 # 0 "" 2
 # 2682 "h264dsputil.c" 1
	Q16ACC xr0,xr2,xr7,xr1,AA
 # 0 "" 2
 # 2684 "h264dsputil.c" 1
	Q16ADD xr4,xr4,xr4,xr0,AA,XW
 # 0 "" 2
 # 2685 "h264dsputil.c" 1
	Q16ADD xr3,xr3,xr3,xr0,SS,XW
 # 0 "" 2
 # 2686 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr8,SS,XW
 # 0 "" 2
 # 2687 "h264dsputil.c" 1
	S32SFL xr3,xr0,xr3,xr0,ptn3
 # 0 "" 2
 # 2689 "h264dsputil.c" 1
	Q16ACC xr0,xr4,xr8,xr3,AA
 # 0 "" 2
 # 2691 "h264dsputil.c" 1
	S32SFL xr0,xr3,xr1,xr1,ptn3
 # 0 "" 2
 # 2692 "h264dsputil.c" 1
	Q16ADD xr0,xr1,xr13,xr12,AA,WW
 # 0 "" 2
 # 2695 "h264dsputil.c" 1
	Q16SAR xr12,xr12,xr11,xr11,5
 # 0 "" 2
 # 2696 "h264dsputil.c" 1
	Q16SAT xr1,xr12,xr11
 # 0 "" 2
 # 2699 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr9
 # 0 "" 2
 # 2700 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$11,$11,4
	.set	noreorder
	.set	nomacro
	bne	$3,$15,$L115
	addiu	$10,$10,4
	.set	macro
	.set	reorder

	addiu	$12,$12,1
	addu	$14,$14,$24
	.set	noreorder
	.set	nomacro
	bne	$12,$18,$L119
	addu	$13,$13,$24
	.set	macro
	.set	reorder

	lw	$18,12($sp)
	lw	$17,8($sp)
	lw	$16,4($sp)
	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,16
	.set	macro
	.set	reorder

	.end	put_h264_qpel8_h_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel8_v_lowpass_itpavg_mxu
	.type	put_h264_qpel8_v_lowpass_itpavg_mxu, @function
put_h264_qpel8_v_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$9,16($sp)
	sll	$2,$9,1
	subu	$5,$5,$2
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$10,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,336855040			# 0x14140000
	and	$5,$5,$3
	ori	$2,$2,0x1414
#APP
 # 2722 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 2723 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 2724 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	lw	$2,20($sp)
	addiu	$4,$4,-4
	addiu	$6,$6,-4
	addiu	$7,$7,-8
	addiu	$13,$2,-8
	move	$11,$0
	li	$12,2			# 0x2
	li	$14,8			# 0x8
$L121:
	move	$8,$0
	sll	$2,$8,2
$L126:
	addu	$2,$2,$5
	addiu	$3,$2,4
#APP
 # 2732 "h264dsputil.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 2733 "h264dsputil.c" 1
	S32LDD xr2,$3,0
 # 0 "" 2
 # 2735 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2736 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2738 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$10
 # 0 "" 2
 # 2739 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$10
 # 0 "" 2
 # 2741 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2742 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2743 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 2745 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$10
 # 0 "" 2
 # 2747 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 2749 "h264dsputil.c" 1
	S32LDIV xr3,$2,$9,0
 # 0 "" 2
 # 2750 "h264dsputil.c" 1
	S32LDIV xr4,$3,$9,0
 # 0 "" 2
 # 2751 "h264dsputil.c" 1
	S32LDIV xr2,$2,$9,0
 # 0 "" 2
 # 2752 "h264dsputil.c" 1
	S32LDIV xr5,$3,$9,0
 # 0 "" 2
 # 2754 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$10
 # 0 "" 2
 # 2755 "h264dsputil.c" 1
	S32LDI xr12,$6,4
 # 0 "" 2
 # 2759 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$10
 # 0 "" 2
 # 2761 "h264dsputil.c" 1
	S32LDIV xr11,$2,$9,0
 # 0 "" 2
 # 2762 "h264dsputil.c" 1
	S32LDIV xr2,$3,$9,0
 # 0 "" 2
 # 2763 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 2764 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 2768 "h264dsputil.c" 1
	S32ALN xr2,xr2,xr11,$10
 # 0 "" 2
 # 2771 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 2774 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 2775 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 2778 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 2779 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 2782 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 2783 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 2786 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 2787 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 2788 "h264dsputil.c" 1
	Q8AVGR xr1,xr1,xr12
 # 0 "" 2
 # 2790 "h264dsputil.c" 1
	S32SDI xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,1
	.set	noreorder
	.set	nomacro
	bne	$8,$12,$L126
	sll	$2,$8,2
	.set	macro
	.set	reorder

	addiu	$11,$11,1
	.set	noreorder
	.set	nomacro
	beq	$11,$14,$L127
	addu	$5,$5,$9
	.set	macro
	.set	reorder

	addu	$4,$4,$7
	.set	noreorder
	.set	nomacro
	b	$L121
	addu	$6,$6,$13
	.set	macro
	.set	reorder

$L127:
	j	$31
	.end	put_h264_qpel8_v_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel16_h_lowpass_itpavg_mxu
	.type	put_h264_qpel16_h_lowpass_itpavg_mxu, @function
put_h264_qpel16_h_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	24
	lw	$18,80($sp)
	lw	$20,84($sp)
	move	$19,$7
	move	$21,$6
	move	$16,$4
	move	$17,$5
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	addiu	$4,$16,8
	addiu	$5,$17,8
	addiu	$6,$21,8
	move	$7,$19
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	sll	$2,$18,3
	sll	$3,$19,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	addiu	$6,$21,128
	move	$7,$19
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	lw	$28,24($sp)
	sw	$18,80($sp)
	sw	$20,84($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	addiu	$6,$21,136
	move	$7,$19
	lw	$31,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	.option	pic0
	j	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_h_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel16_v_lowpass_itpavg_mxu
	.type	put_h264_qpel16_v_lowpass_itpavg_mxu, @function
put_h264_qpel16_v_lowpass_itpavg_mxu:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	24
	lw	$18,80($sp)
	lw	$20,84($sp)
	move	$19,$7
	move	$21,$6
	move	$16,$4
	move	$17,$5
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	addiu	$4,$16,8
	addiu	$5,$17,8
	addiu	$6,$21,8
	move	$7,$19
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	sll	$2,$18,3
	sll	$3,$19,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	addiu	$6,$21,128
	move	$7,$19
	sw	$18,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$20,20($sp)

	lw	$28,24($sp)
	sw	$18,80($sp)
	sw	$20,84($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	addiu	$6,$21,136
	move	$7,$19
	lw	$31,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	.option	pic0
	j	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_v_lowpass_itpavg_mxu
	.align	2
	.ent	put_h264_qpel4_mc00_c
	.type	put_h264_qpel4_mc00_c, @function
put_h264_qpel4_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$7,$6
	li	$3,-4			# 0xfffffffffffffffc
	andi	$6,$5,0x3
	li	$2,4			# 0x4
	subu	$2,$2,$6
	and	$5,$5,$3
	subu	$4,$4,$7
	move	$3,$0
	li	$6,4			# 0x4
$L133:
#APP
 # 51 "h264dsputil.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 52 "h264dsputil.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
#NO_APP
	addu	$5,$5,$7
#APP
 # 55 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$2
 # 0 "" 2
 # 57 "h264dsputil.c" 1
	S32SDIV xr1,$4,$7,0
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	bne	$3,$6,$L133
	j	$31
	.end	put_h264_qpel4_mc00_c
	.align	2
	.ent	put_h264_qpel4_mc10_c
	.type	put_h264_qpel4_mc10_c, @function
put_h264_qpel4_mc10_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc10_c
	.align	2
	.ent	put_h264_qpel4_mc20_c
	.type	put_h264_qpel4_mc20_c, @function
put_h264_qpel4_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	put_h264_qpel4_h_lowpass_mxu
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc20_c
	.align	2
	.ent	put_h264_qpel4_mc30_c
	.type	put_h264_qpel4_mc30_c, @function
put_h264_qpel4_mc30_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc30_c
	.align	2
	.ent	put_h264_qpel4_mc01_c
	.type	put_h264_qpel4_mc01_c, @function
put_h264_qpel4_mc01_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc01_c
	.align	2
	.ent	put_h264_qpel4_mc02_c
	.type	put_h264_qpel4_mc02_c, @function
put_h264_qpel4_mc02_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	move	$7,$6
	sll	$6,$6,1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$2,336855040			# 0x14140000
	ori	$2,$2,0x1414
#APP
 # 1429 "h264dsputil.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,84213760			# 0x5050000
	ori	$3,$3,0x505
#APP
 # 1430 "h264dsputil.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0x10
#APP
 # 1431 "h264dsputil.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,-4			# 0xfffffffffffffffc
	and	$5,$5,$3
	subu	$6,$7,$6
	addu	$6,$6,$5
	subu	$4,$4,$7
	move	$5,$0
	li	$9,4			# 0x4
$L145:
	addiu	$3,$6,4
	move	$2,$6
#APP
 # 1438 "h264dsputil.c" 1
	S32LDIV xr1,$2,$7,0
 # 0 "" 2
 # 1439 "h264dsputil.c" 1
	S32LDIV xr2,$3,$7,0
 # 0 "" 2
 # 1441 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1442 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1444 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$8
 # 0 "" 2
 # 1445 "h264dsputil.c" 1
	S32ALN xr2,xr4,xr3,$8
 # 0 "" 2
 # 1447 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1448 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1449 "h264dsputil.c" 1
	Q8MUL xr10,xr2,xr14,xr9
 # 0 "" 2
 # 1451 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$8
 # 0 "" 2
 # 1453 "h264dsputil.c" 1
	Q8MUL xr8,xr3,xr15,xr7
 # 0 "" 2
 # 1455 "h264dsputil.c" 1
	S32LDIV xr3,$2,$7,0
 # 0 "" 2
 # 1456 "h264dsputil.c" 1
	S32LDIV xr4,$3,$7,0
 # 0 "" 2
 # 1457 "h264dsputil.c" 1
	S32LDIV xr2,$2,$7,0
 # 0 "" 2
 # 1458 "h264dsputil.c" 1
	S32LDIV xr5,$3,$7,0
 # 0 "" 2
 # 1460 "h264dsputil.c" 1
	S32ALN xr4,xr4,xr3,$8
 # 0 "" 2
 # 1464 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr2,$8
 # 0 "" 2
 # 1466 "h264dsputil.c" 1
	S32LDIV xr11,$2,$7,0
 # 0 "" 2
 # 1467 "h264dsputil.c" 1
	S32LDIV xr12,$3,$7,0
 # 0 "" 2
 # 1468 "h264dsputil.c" 1
	Q8MUL xr6,xr5,xr14,xr5
 # 0 "" 2
 # 1469 "h264dsputil.c" 1
	Q8MUL xr4,xr4,xr15,xr3
 # 0 "" 2
 # 1473 "h264dsputil.c" 1
	S32ALN xr2,xr12,xr11,$8
 # 0 "" 2
 # 1476 "h264dsputil.c" 1
	Q8ADDE xr2,xr1,xr2,xr1,AA
 # 0 "" 2
 # 1479 "h264dsputil.c" 1
	Q16ACC xr2,xr8,xr10,xr0,SS
 # 0 "" 2
 # 1480 "h264dsputil.c" 1
	Q16ACC xr1,xr7,xr9,xr0,SS
 # 0 "" 2
 # 1483 "h264dsputil.c" 1
	Q16ACC xr2,xr4,xr6,xr0,SS
 # 0 "" 2
 # 1484 "h264dsputil.c" 1
	Q16ACC xr1,xr3,xr5,xr0,SS
 # 0 "" 2
 # 1487 "h264dsputil.c" 1
	Q16ADD xr2,xr2,xr13,xr0,AA,WW
 # 0 "" 2
 # 1488 "h264dsputil.c" 1
	Q16ADD xr1,xr1,xr13,xr0,AA,WW
 # 0 "" 2
 # 1491 "h264dsputil.c" 1
	Q16SAR xr2,xr2,xr1,xr1,5
 # 0 "" 2
 # 1492 "h264dsputil.c" 1
	Q16SAT xr1,xr2,xr1
 # 0 "" 2
 # 1494 "h264dsputil.c" 1
	S32SDIV xr1,$4,$7,0
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	.set	noreorder
	.set	nomacro
	bne	$5,$9,$L145
	addu	$6,$6,$7
	.set	macro
	.set	reorder

	j	$31
	.end	put_h264_qpel4_mc02_c
	.align	2
	.ent	put_h264_qpel4_mc03_c
	.type	put_h264_qpel4_mc03_c, @function
put_h264_qpel4_mc03_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc03_c
	.align	2
	.ent	put_h264_qpel4_mc11_c
	.type	put_h264_qpel4_mc11_c, @function
put_h264_qpel4_mc11_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 16, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_mxu
	.option	pic2
	li	$6,4			# 0x4

	move	$4,$18
	move	$5,$19
	move	$6,$17
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,68($sp)
	lw	$28,24($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc11_c
	.align	2
	.ent	put_h264_qpel4_mc31_c
	.type	put_h264_qpel4_mc31_c, @function
put_h264_qpel4_mc31_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 16, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_mxu
	.option	pic2
	li	$6,4			# 0x4

	move	$4,$18
	addiu	$5,$19,1
	move	$6,$17
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,68($sp)
	lw	$28,24($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc31_c
	.align	2
	.ent	put_h264_qpel4_mc13_c
	.type	put_h264_qpel4_mc13_c, @function
put_h264_qpel4_mc13_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 16, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_mxu
	.option	pic2
	li	$6,4			# 0x4

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,68($sp)
	lw	$28,24($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc13_c
	.align	2
	.ent	put_h264_qpel4_mc33_c
	.type	put_h264_qpel4_mc33_c, @function
put_h264_qpel4_mc33_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 16, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_mxu
	.option	pic2
	li	$6,4			# 0x4

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,68($sp)
	lw	$28,24($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc33_c
	.align	2
	.ent	put_h264_qpel4_mc22_c
	.type	put_h264_qpel4_mc22_c, @function
put_h264_qpel4_mc22_c:
	.set	nomips16
	.frame	$sp,112,$31		# vars= 72, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	.cprestore	24
	move	$2,$6
	li	$3,8			# 0x8
	move	$6,$5
	move	$7,$2
	addiu	$5,$sp,32
	sw	$3,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,108($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc22_c
	.align	2
	.ent	put_h264_qpel4_mc21_c
	.type	put_h264_qpel4_mc21_c, @function
put_h264_qpel4_mc21_c:
	.set	nomips16
	.frame	$sp,144,$31		# vars= 88, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$19,136($sp)
	sw	$18,132($sp)
	sw	$17,128($sp)
	sw	$16,124($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,48
	move	$4,$18
	move	$6,$17
	li	$2,8			# 0x8
	li	$7,4			# 0x4
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,140($sp)
	lw	$28,24($sp)
	lw	$19,136($sp)
	lw	$18,132($sp)
	lw	$17,128($sp)
	lw	$16,124($sp)
	j	$31
	addiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc21_c
	.align	2
	.ent	put_h264_qpel4_mc23_c
	.type	put_h264_qpel4_mc23_c, @function
put_h264_qpel4_mc23_c:
	.set	nomips16
	.frame	$sp,144,$31		# vars= 88, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$19,136($sp)
	sw	$18,132($sp)
	sw	$17,128($sp)
	sw	$16,124($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,48
	move	$4,$18
	move	$6,$17
	li	$2,8			# 0x8
	li	$7,4			# 0x4
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	addu	$5,$17,$16
	move	$4,$19
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,140($sp)
	lw	$28,24($sp)
	lw	$19,136($sp)
	lw	$18,132($sp)
	lw	$17,128($sp)
	lw	$16,124($sp)
	j	$31
	addiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc23_c
	.align	2
	.ent	put_h264_qpel4_mc12_c
	.type	put_h264_qpel4_mc12_c, @function
put_h264_qpel4_mc12_c:
	.set	nomips16
	.frame	$sp,144,$31		# vars= 88, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$19,136($sp)
	sw	$18,132($sp)
	sw	$17,128($sp)
	sw	$16,124($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,48
	move	$4,$18
	move	$6,$17
	li	$2,8			# 0x8
	li	$7,4			# 0x4
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,140($sp)
	lw	$28,24($sp)
	lw	$19,136($sp)
	lw	$18,132($sp)
	lw	$17,128($sp)
	lw	$16,124($sp)
	j	$31
	addiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc12_c
	.align	2
	.ent	put_h264_qpel4_mc32_c
	.type	put_h264_qpel4_mc32_c, @function
put_h264_qpel4_mc32_c:
	.set	nomips16
	.frame	$sp,144,$31		# vars= 88, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-144
	sw	$31,140($sp)
	sw	$19,136($sp)
	sw	$18,132($sp)
	sw	$17,128($sp)
	sw	$16,124($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,48
	move	$4,$18
	move	$6,$17
	li	$2,8			# 0x8
	li	$7,4			# 0x4
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,4			# 0x4
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel4_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,140($sp)
	lw	$28,24($sp)
	lw	$19,136($sp)
	lw	$18,132($sp)
	lw	$17,128($sp)
	lw	$16,124($sp)
	j	$31
	addiu	$sp,$sp,144

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_mc32_c
	.align	2
	.ent	put_h264_qpel8_mc00_c
	.type	put_h264_qpel8_mc00_c, @function
put_h264_qpel8_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$5,$3
	li	$2,4			# 0x4
	andi	$5,$5,0x3
	subu	$2,$2,$5
	subu	$4,$4,$6
	subu	$3,$3,$6
	move	$5,$0
	li	$7,8			# 0x8
$L169:
#APP
 # 70 "h264dsputil.c" 1
	S32LDIV xr1,$3,$6,0
 # 0 "" 2
 # 71 "h264dsputil.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 72 "h264dsputil.c" 1
	S32LDD xr3,$3,8
 # 0 "" 2
 # 74 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$2
 # 0 "" 2
 # 75 "h264dsputil.c" 1
	S32ALN xr2,xr3,xr2,$2
 # 0 "" 2
 # 77 "h264dsputil.c" 1
	S32SDIV xr1,$4,$6,0
 # 0 "" 2
 # 78 "h264dsputil.c" 1
	S32STD xr2,$4,4
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	bne	$5,$7,$L169
	j	$31
	.end	put_h264_qpel8_mc00_c
	.align	2
	.ent	put_h264_qpel8_mc10_c
	.type	put_h264_qpel8_mc10_c, @function
put_h264_qpel8_mc10_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc10_c
	.align	2
	.ent	put_h264_qpel8_mc20_c
	.type	put_h264_qpel8_mc20_c, @function
put_h264_qpel8_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc20_c
	.align	2
	.ent	put_h264_qpel8_mc30_c
	.type	put_h264_qpel8_mc30_c, @function
put_h264_qpel8_mc30_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc30_c
	.align	2
	.ent	put_h264_qpel8_mc01_c
	.type	put_h264_qpel8_mc01_c, @function
put_h264_qpel8_mc01_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc01_c
	.align	2
	.ent	put_h264_qpel8_mc02_c
	.type	put_h264_qpel8_mc02_c, @function
put_h264_qpel8_mc02_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	put_h264_qpel8_v_lowpass_mxu
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc02_c
	.align	2
	.ent	put_h264_qpel8_mc03_c
	.type	put_h264_qpel8_mc03_c, @function
put_h264_qpel8_mc03_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc03_c
	.align	2
	.ent	put_h264_qpel8_mc11_c
	.type	put_h264_qpel8_mc11_c, @function
put_h264_qpel8_mc11_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 64, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	li	$6,8			# 0x8

	move	$4,$18
	move	$5,$19
	move	$6,$17
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,116($sp)
	lw	$28,24($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc11_c
	.align	2
	.ent	put_h264_qpel8_mc31_c
	.type	put_h264_qpel8_mc31_c, @function
put_h264_qpel8_mc31_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 64, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	li	$6,8			# 0x8

	move	$4,$18
	addiu	$5,$19,1
	move	$6,$17
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,116($sp)
	lw	$28,24($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc31_c
	.align	2
	.ent	put_h264_qpel8_mc13_c
	.type	put_h264_qpel8_mc13_c, @function
put_h264_qpel8_mc13_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 64, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	li	$6,8			# 0x8

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,116($sp)
	lw	$28,24($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc13_c
	.align	2
	.ent	put_h264_qpel8_mc33_c
	.type	put_h264_qpel8_mc33_c, @function
put_h264_qpel8_mc33_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 64, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_mxu
	.option	pic2
	li	$6,8			# 0x8

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,116($sp)
	lw	$28,24($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc33_c
	.align	2
	.ent	put_h264_qpel8_mc22_c
	.type	put_h264_qpel8_mc22_c, @function
put_h264_qpel8_mc22_c:
	.set	nomips16
	.frame	$sp,248,$31		# vars= 208, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-248
	sw	$31,244($sp)
	.cprestore	24
	move	$2,$6
	li	$3,16			# 0x10
	move	$6,$5
	move	$7,$2
	addiu	$5,$sp,32
	sw	$3,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,244($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,248

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc22_c
	.align	2
	.ent	put_h264_qpel8_mc21_c
	.type	put_h264_qpel8_mc21_c, @function
put_h264_qpel8_mc21_c:
	.set	nomips16
	.frame	$sp,328,$31		# vars= 272, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-328
	sw	$31,324($sp)
	sw	$19,320($sp)
	sw	$18,316($sp)
	sw	$17,312($sp)
	sw	$16,308($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,96
	move	$4,$18
	move	$6,$17
	li	$2,16			# 0x10
	li	$7,8			# 0x8
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,324($sp)
	lw	$28,24($sp)
	lw	$19,320($sp)
	lw	$18,316($sp)
	lw	$17,312($sp)
	lw	$16,308($sp)
	j	$31
	addiu	$sp,$sp,328

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc21_c
	.align	2
	.ent	put_h264_qpel8_mc23_c
	.type	put_h264_qpel8_mc23_c, @function
put_h264_qpel8_mc23_c:
	.set	nomips16
	.frame	$sp,328,$31		# vars= 272, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-328
	sw	$31,324($sp)
	sw	$19,320($sp)
	sw	$18,316($sp)
	sw	$17,312($sp)
	sw	$16,308($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,96
	move	$4,$18
	move	$6,$17
	li	$2,16			# 0x10
	li	$7,8			# 0x8
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	addu	$5,$17,$16
	move	$4,$19
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,324($sp)
	lw	$28,24($sp)
	lw	$19,320($sp)
	lw	$18,316($sp)
	lw	$17,312($sp)
	lw	$16,308($sp)
	j	$31
	addiu	$sp,$sp,328

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc23_c
	.align	2
	.ent	put_h264_qpel8_mc12_c
	.type	put_h264_qpel8_mc12_c, @function
put_h264_qpel8_mc12_c:
	.set	nomips16
	.frame	$sp,328,$31		# vars= 272, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-328
	sw	$31,324($sp)
	sw	$19,320($sp)
	sw	$18,316($sp)
	sw	$17,312($sp)
	sw	$16,308($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,96
	move	$4,$18
	move	$6,$17
	li	$2,16			# 0x10
	li	$7,8			# 0x8
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,324($sp)
	lw	$28,24($sp)
	lw	$19,320($sp)
	lw	$18,316($sp)
	lw	$17,312($sp)
	lw	$16,308($sp)
	j	$31
	addiu	$sp,$sp,328

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc12_c
	.align	2
	.ent	put_h264_qpel8_mc32_c
	.type	put_h264_qpel8_mc32_c, @function
put_h264_qpel8_mc32_c:
	.set	nomips16
	.frame	$sp,328,$31		# vars= 272, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-328
	sw	$31,324($sp)
	sw	$19,320($sp)
	sw	$18,316($sp)
	sw	$17,312($sp)
	sw	$16,308($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,96
	move	$4,$18
	move	$6,$17
	li	$2,16			# 0x10
	li	$7,8			# 0x8
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,8			# 0x8
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,324($sp)
	lw	$28,24($sp)
	lw	$19,320($sp)
	lw	$18,316($sp)
	lw	$17,312($sp)
	lw	$16,308($sp)
	j	$31
	addiu	$sp,$sp,328

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_mc32_c
	.align	2
	.ent	put_h264_qpel16_mc00_c
	.type	put_h264_qpel16_mc00_c, @function
put_h264_qpel16_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$5,$3
	li	$2,4			# 0x4
	andi	$5,$5,0x3
	subu	$2,$2,$5
	subu	$4,$4,$6
	subu	$3,$3,$6
	move	$5,$0
	li	$7,16			# 0x10
$L203:
#APP
 # 92 "h264dsputil.c" 1
	S32LDIV xr1,$3,$6,0
 # 0 "" 2
 # 93 "h264dsputil.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 94 "h264dsputil.c" 1
	S32LDD xr3,$3,8
 # 0 "" 2
 # 95 "h264dsputil.c" 1
	S32LDD xr4,$3,12
 # 0 "" 2
 # 96 "h264dsputil.c" 1
	S32LDD xr5,$3,16
 # 0 "" 2
 # 98 "h264dsputil.c" 1
	S32ALN xr1,xr2,xr1,$2
 # 0 "" 2
 # 99 "h264dsputil.c" 1
	S32ALN xr2,xr3,xr2,$2
 # 0 "" 2
 # 100 "h264dsputil.c" 1
	S32ALN xr3,xr4,xr3,$2
 # 0 "" 2
 # 101 "h264dsputil.c" 1
	S32ALN xr4,xr5,xr4,$2
 # 0 "" 2
 # 103 "h264dsputil.c" 1
	S32SDIV xr1,$4,$6,0
 # 0 "" 2
 # 104 "h264dsputil.c" 1
	S32STD xr2,$4,4
 # 0 "" 2
 # 105 "h264dsputil.c" 1
	S32STD xr3,$4,8
 # 0 "" 2
 # 106 "h264dsputil.c" 1
	S32STD xr4,$4,12
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	bne	$5,$7,$L203
	j	$31
	.end	put_h264_qpel16_mc00_c
	.align	2
	.ent	put_h264_qpel16_mc10_c
	.type	put_h264_qpel16_mc10_c, @function
put_h264_qpel16_mc10_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc10_c
	.align	2
	.ent	put_h264_qpel16_mc20_c
	.type	put_h264_qpel16_mc20_c, @function
put_h264_qpel16_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	put_h264_qpel16_h_lowpass_mxu
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc20_c
	.align	2
	.ent	put_h264_qpel16_mc30_c
	.type	put_h264_qpel16_mc30_c, @function
put_h264_qpel16_mc30_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc30_c
	.align	2
	.ent	put_h264_qpel16_mc01_c
	.type	put_h264_qpel16_mc01_c, @function
put_h264_qpel16_mc01_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_avg_mxu
	.option	pic2
	sw	$0,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc01_c
	.align	2
	.ent	put_h264_qpel16_mc02_c
	.type	put_h264_qpel16_mc02_c, @function
put_h264_qpel16_mc02_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$6
	move	$17,$4
	move	$18,$5
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_mxu
	.option	pic2
	move	$7,$6

	addiu	$4,$17,8
	addiu	$5,$18,8
	move	$6,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_mxu
	.option	pic2
	move	$7,$16

	sll	$2,$16,3
	addu	$17,$17,$2
	addu	$18,$18,$2
	move	$4,$17
	move	$5,$18
	move	$6,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass_mxu
	.option	pic2
	move	$7,$16

	lw	$28,16($sp)
	move	$6,$16
	addiu	$4,$17,8
	addiu	$5,$18,8
	move	$7,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	.option	pic0
	j	put_h264_qpel8_v_lowpass_mxu
	.option	pic2
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc02_c
	.align	2
	.ent	put_h264_qpel16_mc03_c
	.type	put_h264_qpel16_mc03_c, @function
put_h264_qpel16_mc03_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	.cprestore	24
	move	$7,$6
	li	$2,1			# 0x1
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_avg_mxu
	.option	pic2
	sw	$2,16($sp)

	lw	$31,36($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc03_c
	.align	2
	.ent	put_h264_qpel16_mc11_c
	.type	put_h264_qpel16_mc11_c, @function
put_h264_qpel16_mc11_c:
	.set	nomips16
	.frame	$sp,312,$31		# vars= 256, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$19,304($sp)
	sw	$18,300($sp)
	sw	$17,296($sp)
	sw	$16,292($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_mxu
	.option	pic2
	li	$6,16			# 0x10

	move	$4,$18
	move	$5,$19
	move	$6,$17
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,308($sp)
	lw	$28,24($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	j	$31
	addiu	$sp,$sp,312

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc11_c
	.align	2
	.ent	put_h264_qpel16_mc31_c
	.type	put_h264_qpel16_mc31_c, @function
put_h264_qpel16_mc31_c:
	.set	nomips16
	.frame	$sp,312,$31		# vars= 256, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$19,304($sp)
	sw	$18,300($sp)
	sw	$17,296($sp)
	sw	$16,292($sp)
	.cprestore	24
	move	$16,$6
	addiu	$17,$sp,32
	move	$18,$4
	move	$19,$5
	move	$4,$17
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_mxu
	.option	pic2
	li	$6,16			# 0x10

	move	$4,$18
	addiu	$5,$19,1
	move	$6,$17
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,308($sp)
	lw	$28,24($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	j	$31
	addiu	$sp,$sp,312

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc31_c
	.align	2
	.ent	put_h264_qpel16_mc13_c
	.type	put_h264_qpel16_mc13_c, @function
put_h264_qpel16_mc13_c:
	.set	nomips16
	.frame	$sp,312,$31		# vars= 256, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$19,304($sp)
	sw	$18,300($sp)
	sw	$17,296($sp)
	sw	$16,292($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_mxu
	.option	pic2
	li	$6,16			# 0x10

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,308($sp)
	lw	$28,24($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	j	$31
	addiu	$sp,$sp,312

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc13_c
	.align	2
	.ent	put_h264_qpel16_mc33_c
	.type	put_h264_qpel16_mc33_c, @function
put_h264_qpel16_mc33_c:
	.set	nomips16
	.frame	$sp,312,$31		# vars= 256, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-312
	sw	$31,308($sp)
	sw	$19,304($sp)
	sw	$18,300($sp)
	sw	$17,296($sp)
	sw	$16,292($sp)
	.cprestore	24
	move	$16,$6
	addiu	$18,$sp,32
	move	$17,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	move	$7,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_mxu
	.option	pic2
	li	$6,16			# 0x10

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,308($sp)
	lw	$28,24($sp)
	lw	$19,304($sp)
	lw	$18,300($sp)
	lw	$17,296($sp)
	lw	$16,292($sp)
	j	$31
	addiu	$sp,$sp,312

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc33_c
	.align	2
	.ent	put_h264_qpel16_mc22_c
	.type	put_h264_qpel16_mc22_c, @function
put_h264_qpel16_mc22_c:
	.set	nomips16
	.frame	$sp,712,$31		# vars= 672, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-712
	sw	$31,708($sp)
	.cprestore	24
	move	$2,$6
	li	$3,32			# 0x20
	move	$6,$5
	move	$7,$2
	addiu	$5,$sp,32
	sw	$3,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,708($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,712

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc22_c
	.align	2
	.ent	put_h264_qpel16_mc21_c
	.type	put_h264_qpel16_mc21_c, @function
put_h264_qpel16_mc21_c:
	.set	nomips16
	.frame	$sp,984,$31		# vars= 928, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-984
	sw	$31,980($sp)
	sw	$19,976($sp)
	sw	$18,972($sp)
	sw	$17,968($sp)
	sw	$16,964($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,288
	move	$4,$18
	move	$6,$17
	li	$2,32			# 0x20
	li	$7,16			# 0x10
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,980($sp)
	lw	$28,24($sp)
	lw	$19,976($sp)
	lw	$18,972($sp)
	lw	$17,968($sp)
	lw	$16,964($sp)
	j	$31
	addiu	$sp,$sp,984

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc21_c
	.align	2
	.ent	put_h264_qpel16_mc23_c
	.type	put_h264_qpel16_mc23_c, @function
put_h264_qpel16_mc23_c:
	.set	nomips16
	.frame	$sp,984,$31		# vars= 928, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-984
	sw	$31,980($sp)
	sw	$19,976($sp)
	sw	$18,972($sp)
	sw	$17,968($sp)
	sw	$16,964($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,288
	move	$4,$18
	move	$6,$17
	li	$2,32			# 0x20
	li	$7,16			# 0x10
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	addu	$5,$17,$16
	move	$4,$19
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_h_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,980($sp)
	lw	$28,24($sp)
	lw	$19,976($sp)
	lw	$18,972($sp)
	lw	$17,968($sp)
	lw	$16,964($sp)
	j	$31
	addiu	$sp,$sp,984

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc23_c
	.align	2
	.ent	put_h264_qpel16_mc12_c
	.type	put_h264_qpel16_mc12_c, @function
put_h264_qpel16_mc12_c:
	.set	nomips16
	.frame	$sp,984,$31		# vars= 928, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-984
	sw	$31,980($sp)
	sw	$19,976($sp)
	sw	$18,972($sp)
	sw	$17,968($sp)
	sw	$16,964($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,288
	move	$4,$18
	move	$6,$17
	li	$2,32			# 0x20
	li	$7,16			# 0x10
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	move	$5,$17
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,980($sp)
	lw	$28,24($sp)
	lw	$19,976($sp)
	lw	$18,972($sp)
	lw	$17,968($sp)
	lw	$16,964($sp)
	j	$31
	addiu	$sp,$sp,984

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc12_c
	.align	2
	.ent	put_h264_qpel16_mc32_c
	.type	put_h264_qpel16_mc32_c, @function
put_h264_qpel16_mc32_c:
	.set	nomips16
	.frame	$sp,984,$31		# vars= 928, regs= 5/0, args= 24, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-984
	sw	$31,980($sp)
	sw	$19,976($sp)
	sw	$18,972($sp)
	sw	$17,968($sp)
	sw	$16,964($sp)
	.cprestore	24
	move	$17,$5
	addiu	$18,$sp,32
	move	$16,$6
	move	$19,$4
	addiu	$5,$sp,288
	move	$4,$18
	move	$6,$17
	li	$2,32			# 0x20
	li	$7,16			# 0x10
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass_mxu
	.option	pic2
	sw	$16,20($sp)

	move	$4,$19
	addiu	$5,$17,1
	move	$6,$18
	move	$7,$16
	li	$2,16			# 0x10
	sw	$16,16($sp)
	.option	pic0
	jal	put_h264_qpel16_v_lowpass_itpavg_mxu
	.option	pic2
	sw	$2,20($sp)

	lw	$31,980($sp)
	lw	$28,24($sp)
	lw	$19,976($sp)
	lw	$18,972($sp)
	lw	$17,968($sp)
	lw	$16,964($sp)
	j	$31
	addiu	$sp,$sp,984

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_mc32_c
	.align	2
	.ent	put_h264_qpel2_h_lowpass
	.type	put_h264_qpel2_h_lowpass, @function
put_h264_qpel2_h_lowpass:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$9,$4
	move	$8,$5
	move	$14,$6
	move	$13,$7
	addiu	$11,$2,1024
	move	$10,$0
	li	$12,2			# 0x2
$L237:
	lbu	$6,0($8)
	lbu	$4,1($8)
	lbu	$7,3($8)
	lbu	$2,-1($8)
	lbu	$3,-2($8)
	lbu	$5,2($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	addiu	$10,$10,1
	sb	$2,0($9)
	lbu	$4,2($8)
	lbu	$6,1($8)
	lbu	$2,0($8)
	lbu	$3,-1($8)
	lbu	$7,4($8)
	lbu	$5,3($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	addu	$8,$8,$13
	sb	$2,1($9)
	bne	$10,$12,$L237
	addu	$9,$9,$14

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_h_lowpass
	.align	2
	.ent	put_h264_qpel2_v_lowpass
	.type	put_h264_qpel2_v_lowpass, @function
put_h264_qpel2_v_lowpass:
	.set	nomips16
	.frame	$sp,24,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x003f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	sll	$8,$7,1
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-24
	addu	$2,$8,$7
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$19,12($sp)
	addu	$19,$5,$2
	lw	$2,%got(ff_cropTbl)($28)
	sll	$3,$7,2
	sw	$21,20($sp)
	sw	$20,16($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
	move	$12,$5
	move	$25,$4
	addu	$18,$5,$3
	addu	$17,$4,$6
	addiu	$20,$2,1024
	subu	$16,$5,$8
	subu	$24,$5,$7
	addu	$15,$5,$7
	addu	$14,$5,$8
	move	$13,$0
	li	$21,2			# 0x2
$L241:
	lbu	$11,0($12)
	lbu	$10,0($15)
	lbu	$5,0($24)
	lbu	$6,0($14)
	lbu	$7,0($19)
	lbu	$3,0($16)
	addu	$4,$10,$11
	addu	$8,$6,$5
	sll	$2,$4,4
	addu	$3,$3,$7
	sll	$4,$4,2
	lbu	$9,0($18)
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$8,2
	addu	$6,$6,$10
	addu	$3,$3,$4
	addu	$2,$2,$8
	addu	$7,$7,$11
	subu	$3,$3,$2
	addu	$5,$5,$9
	sll	$2,$6,4
	sll	$6,$6,2
	addu	$6,$6,$2
	sra	$3,$3,5
	addiu	$5,$5,16
	sll	$2,$7,2
	addu	$2,$2,$7
	addu	$5,$5,$6
	addu	$3,$20,$3
	subu	$5,$5,$2
	lbu	$4,0($3)
	sra	$5,$5,5
	sb	$4,0($25)
	addu	$5,$20,$5
	lbu	$2,0($5)
	addiu	$13,$13,1
	sb	$2,0($17)
	addiu	$25,$25,1
	addiu	$12,$12,1
	addiu	$16,$16,1
	addiu	$24,$24,1
	addiu	$15,$15,1
	addiu	$14,$14,1
	addiu	$19,$19,1
	addiu	$18,$18,1
	bne	$13,$21,$L241
	addiu	$17,$17,1

	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_v_lowpass
	.align	2
	.ent	put_h264_qpel2_hv_lowpass
	.type	put_h264_qpel2_hv_lowpass, @function
put_h264_qpel2_hv_lowpass:
	.set	nomips16
	.frame	$sp,24,$31		# vars= 0, regs= 6/0, args= 0, gp= 0
	.mask	0x003f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-24
	lw	$13,44($sp)
	lw	$14,40($sp)
	lui	$28,%hi(__gnu_local_gp)
	sll	$2,$13,1
	sw	$20,16($sp)
	sw	$19,12($sp)
	sw	$21,20($sp)
	sw	$18,8($sp)
	sw	$17,4($sp)
	sw	$16,0($sp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	move	$15,$5
	subu	$8,$6,$2
	move	$19,$4
	move	$20,$7
	sll	$11,$14,1
	move	$9,$5
	move	$10,$0
	li	$12,7			# 0x7
$L245:
	lbu	$2,0($8)
	lbu	$4,1($8)
	lbu	$7,-1($8)
	lbu	$5,2($8)
	lbu	$3,3($8)
	addu	$4,$4,$2
	lbu	$2,-2($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,0($9)
	lbu	$2,1($8)
	lbu	$4,2($8)
	lbu	$5,3($8)
	lbu	$7,0($8)
	addu	$4,$4,$2
	lbu	$3,4($8)
	lbu	$2,-1($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$3,$3,$2
	addu	$4,$4,$6
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	addiu	$10,$10,1
	sh	$3,2($9)
	addu	$8,$8,$13
	bne	$10,$12,$L245
	addu	$9,$9,$11

	sll	$2,$11,3
	sll	$4,$14,3
	subu	$2,$2,$11
	addu	$2,$15,$2
	addu	$3,$11,$4
	subu	$12,$2,$3
	subu	$2,$4,$11
	addu	$17,$12,$2
	lw	$2,%got(ff_cropTbl)($28)
	sll	$5,$14,2
	addu	$25,$19,$20
	addu	$18,$12,$5
	addu	$16,$12,$4
	addiu	$20,$2,1024
	subu	$24,$12,$5
	subu	$15,$12,$11
	addu	$14,$12,$11
	move	$13,$0
	li	$21,2			# 0x2
$L246:
	lh	$11,0($12)
	lh	$10,0($14)
	lh	$5,0($15)
	lh	$6,0($18)
	lh	$7,0($17)
	lh	$3,0($24)
	addu	$4,$10,$11
	addu	$8,$6,$5
	sll	$2,$4,4
	addu	$3,$3,$7
	sll	$4,$4,2
	lh	$9,0($16)
	addu	$4,$4,$2
	addiu	$3,$3,512
	sll	$2,$8,2
	addu	$6,$6,$10
	addu	$3,$3,$4
	addu	$2,$2,$8
	addu	$7,$7,$11
	subu	$3,$3,$2
	addu	$5,$5,$9
	sll	$2,$6,4
	sll	$6,$6,2
	addu	$6,$6,$2
	sra	$3,$3,10
	addiu	$5,$5,512
	sll	$2,$7,2
	addu	$2,$2,$7
	addu	$5,$5,$6
	addu	$3,$20,$3
	subu	$5,$5,$2
	lbu	$4,0($3)
	sra	$5,$5,10
	sb	$4,0($19)
	addu	$5,$20,$5
	lbu	$2,0($5)
	addiu	$13,$13,1
	sb	$2,0($25)
	addiu	$19,$19,1
	addiu	$12,$12,2
	addiu	$24,$24,2
	addiu	$15,$15,2
	addiu	$14,$14,2
	addiu	$18,$18,2
	addiu	$17,$17,2
	addiu	$16,$16,2
	bne	$13,$21,$L246
	addiu	$25,$25,1

	lw	$21,20($sp)
	lw	$20,16($sp)
	lw	$19,12($sp)
	lw	$18,8($sp)
	lw	$17,4($sp)
	lw	$16,0($sp)
	j	$31
	addiu	$sp,$sp,24

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_hv_lowpass
	.align	2
	.ent	put_h264_qpel4_h_lowpass
	.type	put_h264_qpel4_h_lowpass, @function
put_h264_qpel4_h_lowpass:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$9,$4
	move	$8,$5
	move	$14,$6
	move	$13,$7
	addiu	$11,$2,1024
	move	$10,$0
	li	$12,4			# 0x4
$L251:
	lbu	$6,0($8)
	lbu	$4,1($8)
	lbu	$7,3($8)
	lbu	$2,-1($8)
	lbu	$3,-2($8)
	lbu	$5,2($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	addiu	$10,$10,1
	sb	$2,0($9)
	lbu	$6,1($8)
	lbu	$4,2($8)
	lbu	$7,4($8)
	lbu	$2,0($8)
	lbu	$3,-1($8)
	lbu	$5,3($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	sb	$2,1($9)
	lbu	$6,2($8)
	lbu	$4,3($8)
	lbu	$7,5($8)
	lbu	$2,1($8)
	lbu	$3,0($8)
	lbu	$5,4($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	sb	$2,2($9)
	lbu	$4,4($8)
	lbu	$6,3($8)
	lbu	$2,2($8)
	lbu	$3,1($8)
	lbu	$7,6($8)
	lbu	$5,5($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$11,$3
	lbu	$2,0($3)
	addu	$8,$8,$13
	sb	$2,3($9)
	bne	$10,$12,$L251
	addu	$9,$9,$14

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_h_lowpass
	.align	2
	.ent	put_h264_qpel4_v_lowpass
	.type	put_h264_qpel4_v_lowpass, @function
put_h264_qpel4_v_lowpass:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 8, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cprestore	0
	sll	$8,$7,1
	sll	$10,$7,2
	sll	$11,$6,1
	sll	$3,$7,3
	addu	$2,$8,$7
	move	$15,$4
	subu	$3,$3,$8
	addu	$9,$11,$6
	addu	$4,$10,$7
	addu	$2,$5,$2
	move	$14,$5
	sw	$2,8($sp)
	addu	$fp,$5,$4
	addu	$23,$5,$3
	addu	$22,$15,$9
	subu	$21,$5,$8
	subu	$20,$5,$7
	addu	$19,$5,$7
	addu	$18,$5,$8
	addu	$17,$5,$10
	addu	$16,$15,$6
	addu	$25,$15,$11
	move	$24,$0
$L255:
	lw	$2,8($sp)
	lbu	$6,0($19)
	lbu	$5,0($14)
	lbu	$12,0($18)
	lbu	$11,0($2)
	lbu	$7,0($20)
	lbu	$4,0($21)
	addu	$3,$6,$5
	addu	$9,$12,$7
	sll	$2,$3,4
	addu	$4,$4,$11
	sll	$3,$3,2
	lbu	$8,0($17)
	addu	$3,$3,$2
	addiu	$4,$4,16
	sll	$2,$9,2
	addu	$2,$2,$9
	addu	$4,$4,$3
	addu	$3,$12,$6
	subu	$4,$4,$2
	addu	$7,$7,$8
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$7,$7,16
	addu	$7,$7,$3
	lw	$3,%got(ff_cropTbl)($28)
	addu	$9,$11,$5
	lbu	$10,0($fp)
	sll	$2,$9,2
	addiu	$3,$3,1024
	sra	$4,$4,5
	addu	$2,$2,$9
	addu	$4,$3,$4
	addu	$3,$11,$12
	subu	$7,$7,$2
	addu	$5,$5,$10
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$5,$5,16
	addu	$5,$5,$3
	lw	$3,%got(ff_cropTbl)($28)
	lbu	$13,0($4)
	addiu	$3,$3,1024
	sra	$7,$7,5
	lbu	$9,0($23)
	addu	$4,$8,$6
	sb	$13,0($15)
	addu	$7,$3,$7
	lbu	$3,0($7)
	sll	$2,$4,2
	addu	$8,$8,$11
	addu	$2,$2,$4
	sb	$3,0($16)
	addu	$10,$10,$12
	subu	$5,$5,$2
	addu	$6,$6,$9
	sll	$2,$8,4
	lw	$3,%got(ff_cropTbl)($28)
	sll	$8,$8,2
	addu	$8,$8,$2
	addiu	$6,$6,16
	sll	$2,$10,2
	addu	$2,$2,$10
	addiu	$3,$3,1024
	sra	$5,$5,5
	addu	$6,$6,$8
	subu	$6,$6,$2
	addu	$5,$3,$5
	lw	$2,%got(ff_cropTbl)($28)
	lbu	$3,0($5)
	addiu	$2,$2,1024
	sra	$6,$6,5
	sb	$3,0($25)
	addu	$6,$2,$6
	lbu	$2,0($6)
	addiu	$24,$24,1
	sb	$2,0($22)
	lw	$3,8($sp)
	li	$2,4			# 0x4
	addiu	$3,$3,1
	addiu	$15,$15,1
	addiu	$14,$14,1
	addiu	$21,$21,1
	addiu	$20,$20,1
	addiu	$19,$19,1
	addiu	$18,$18,1
	sw	$3,8($sp)
	addiu	$17,$17,1
	addiu	$fp,$fp,1
	addiu	$23,$23,1
	addiu	$16,$16,1
	addiu	$25,$25,1
	bne	$24,$2,$L255
	addiu	$22,$22,1

	lw	$fp,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_v_lowpass
	.align	2
	.ent	put_h264_qpel4_hv_lowpass
	.type	put_h264_qpel4_hv_lowpass, @function
put_h264_qpel4_hv_lowpass:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 8, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-56
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,52($sp)
	sw	$23,48($sp)
	sw	$22,44($sp)
	sw	$21,40($sp)
	sw	$20,36($sp)
	sw	$19,32($sp)
	sw	$18,28($sp)
	sw	$17,24($sp)
	sw	$16,20($sp)
	.cprestore	0
	lw	$13,76($sp)
	lw	$14,72($sp)
	sll	$2,$13,1
	move	$16,$5
	subu	$8,$6,$2
	sw	$4,56($sp)
	move	$15,$7
	sll	$11,$14,1
	move	$9,$5
	move	$10,$0
	li	$12,9			# 0x9
$L259:
	lbu	$2,0($8)
	lbu	$4,1($8)
	lbu	$7,-1($8)
	lbu	$5,2($8)
	lbu	$3,3($8)
	addu	$4,$4,$2
	lbu	$2,-2($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,0($9)
	lbu	$2,1($8)
	lbu	$4,2($8)
	lbu	$7,0($8)
	lbu	$5,3($8)
	lbu	$3,4($8)
	addu	$4,$4,$2
	lbu	$2,-1($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,2($9)
	lbu	$2,2($8)
	lbu	$4,3($8)
	lbu	$7,1($8)
	lbu	$5,4($8)
	lbu	$3,5($8)
	addu	$4,$4,$2
	lbu	$2,0($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,4($9)
	lbu	$2,3($8)
	lbu	$4,4($8)
	lbu	$5,5($8)
	lbu	$7,2($8)
	addu	$4,$4,$2
	lbu	$3,6($8)
	lbu	$2,1($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$3,$3,$2
	addu	$4,$4,$6
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	addiu	$10,$10,1
	sh	$3,6($9)
	addu	$8,$8,$13
	bne	$10,$12,$L259
	addu	$9,$9,$11

	sll	$3,$11,3
	sll	$4,$14,4
	addu	$3,$3,$11
	sll	$6,$14,3
	addu	$3,$16,$3
	subu	$2,$11,$4
	sll	$5,$14,2
	addu	$14,$3,$2
	subu	$2,$6,$11
	sll	$8,$15,1
	addu	$fp,$14,$2
	lw	$2,56($sp)
	addu	$3,$8,$15
	addu	$7,$11,$6
	subu	$4,$4,$5
	addu	$25,$2,$15
	addu	$23,$14,$7
	addu	$22,$14,$4
	addu	$21,$2,$3
	subu	$20,$14,$5
	subu	$19,$14,$11
	addu	$18,$14,$11
	addu	$17,$14,$5
	addu	$16,$14,$6
	addu	$24,$2,$8
	move	$15,$0
$L260:
	lh	$6,0($18)
	lh	$5,0($14)
	lh	$12,0($17)
	lh	$11,0($fp)
	lh	$7,0($19)
	lh	$4,0($20)
	addu	$3,$6,$5
	addu	$9,$12,$7
	sll	$2,$3,4
	addu	$4,$4,$11
	sll	$3,$3,2
	lh	$8,0($16)
	addu	$3,$3,$2
	addiu	$4,$4,512
	sll	$2,$9,2
	addu	$2,$2,$9
	addu	$4,$4,$3
	addu	$3,$12,$6
	subu	$4,$4,$2
	addu	$7,$7,$8
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$7,$7,512
	addu	$7,$7,$3
	lw	$3,%got(ff_cropTbl)($28)
	addu	$9,$11,$5
	sll	$2,$9,2
	addiu	$3,$3,1024
	sra	$4,$4,10
	addu	$2,$2,$9
	addu	$4,$3,$4
	addu	$3,$11,$12
	lbu	$13,0($4)
	subu	$7,$7,$2
	addu	$4,$8,$6
	sll	$2,$3,4
	sll	$3,$3,2
	lh	$10,0($23)
	addu	$3,$3,$2
	sll	$2,$4,2
	sw	$2,8($sp)
	lw	$2,56($sp)
	addu	$5,$5,$10
	lh	$9,0($22)
	addiu	$5,$5,512
	sb	$13,0($2)
	addu	$5,$5,$3
	lw	$3,8($sp)
	sra	$7,$7,10
	addu	$2,$3,$4
	lw	$3,%got(ff_cropTbl)($28)
	addu	$8,$8,$11
	addiu	$3,$3,1024
	addu	$7,$3,$7
	lbu	$3,0($7)
	addu	$10,$10,$12
	sb	$3,0($25)
	subu	$5,$5,$2
	addu	$6,$6,$9
	sll	$2,$8,4
	lw	$3,%got(ff_cropTbl)($28)
	sll	$8,$8,2
	addu	$8,$8,$2
	addiu	$6,$6,512
	sll	$2,$10,2
	addu	$2,$2,$10
	addiu	$3,$3,1024
	sra	$5,$5,10
	addu	$6,$6,$8
	subu	$6,$6,$2
	addu	$5,$3,$5
	lw	$2,%got(ff_cropTbl)($28)
	lbu	$3,0($5)
	addiu	$2,$2,1024
	sra	$6,$6,10
	sb	$3,0($24)
	addu	$6,$2,$6
	lbu	$2,0($6)
	addiu	$15,$15,1
	sb	$2,0($21)
	lw	$3,56($sp)
	li	$2,4			# 0x4
	addiu	$3,$3,1
	sw	$3,56($sp)
	addiu	$14,$14,2
	addiu	$20,$20,2
	addiu	$19,$19,2
	addiu	$18,$18,2
	addiu	$17,$17,2
	addiu	$fp,$fp,2
	addiu	$16,$16,2
	addiu	$23,$23,2
	addiu	$22,$22,2
	addiu	$25,$25,1
	addiu	$24,$24,1
	bne	$15,$2,$L260
	addiu	$21,$21,1

	lw	$fp,52($sp)
	lw	$23,48($sp)
	lw	$22,44($sp)
	lw	$21,40($sp)
	lw	$20,36($sp)
	lw	$19,32($sp)
	lw	$18,28($sp)
	lw	$17,24($sp)
	lw	$16,20($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel4_hv_lowpass
	.align	2
	.ent	put_h264_qpel8_h_lowpass
	.type	put_h264_qpel8_h_lowpass, @function
put_h264_qpel8_h_lowpass:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$9,$4
	move	$8,$5
	move	$12,$6
	move	$13,$7
	addiu	$10,$2,1024
	move	$11,$0
	li	$14,8			# 0x8
$L265:
	lbu	$6,0($8)
	lbu	$4,1($8)
	lbu	$7,3($8)
	lbu	$2,-1($8)
	lbu	$3,-2($8)
	lbu	$5,2($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	addiu	$11,$11,1
	sb	$2,0($9)
	lbu	$6,1($8)
	lbu	$4,2($8)
	lbu	$7,4($8)
	lbu	$2,0($8)
	lbu	$3,-1($8)
	lbu	$5,3($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,1($9)
	lbu	$6,2($8)
	lbu	$4,3($8)
	lbu	$7,5($8)
	lbu	$2,1($8)
	lbu	$3,0($8)
	lbu	$5,4($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,2($9)
	lbu	$6,3($8)
	lbu	$4,4($8)
	lbu	$7,6($8)
	lbu	$2,2($8)
	lbu	$3,1($8)
	lbu	$5,5($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,3($9)
	lbu	$6,4($8)
	lbu	$4,5($8)
	lbu	$7,7($8)
	lbu	$2,3($8)
	lbu	$3,2($8)
	lbu	$5,6($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,4($9)
	lbu	$6,5($8)
	lbu	$4,6($8)
	lbu	$7,8($8)
	lbu	$2,4($8)
	lbu	$3,3($8)
	lbu	$5,7($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,5($9)
	lbu	$6,6($8)
	lbu	$4,7($8)
	lbu	$7,9($8)
	lbu	$2,5($8)
	lbu	$3,4($8)
	lbu	$5,8($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	sb	$2,6($9)
	lbu	$4,8($8)
	lbu	$6,7($8)
	lbu	$2,6($8)
	lbu	$3,5($8)
	lbu	$7,10($8)
	lbu	$5,9($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	addu	$3,$10,$3
	lbu	$2,0($3)
	addu	$8,$8,$13
	sb	$2,7($9)
	bne	$11,$14,$L265
	addu	$9,$9,$12

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_h_lowpass
	.align	2
	.ent	put_h264_qpel8_v_lowpass
	.type	put_h264_qpel8_v_lowpass, @function
put_h264_qpel8_v_lowpass:
	.set	nomips16
	.frame	$sp,104,$31		# vars= 56, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,100($sp)
	sw	$23,96($sp)
	sw	$22,92($sp)
	sw	$21,88($sp)
	sw	$20,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	.cprestore	0
	sll	$8,$7,1
	move	$24,$5
	addu	$2,$8,$7
	sll	$11,$6,1
	sll	$3,$6,3
	addu	$2,$24,$2
	move	$19,$4
	sll	$9,$7,3
	sll	$17,$7,2
	sll	$18,$6,2
	subu	$16,$3,$6
	sw	$2,44($sp)
	subu	$3,$3,$11
	lw	$2,%got(ff_cropTbl)($28)
	addu	$12,$17,$7
	addu	$13,$9,$7
	addu	$14,$18,$6
	subu	$5,$9,$7
	addu	$3,$19,$3
	addu	$15,$8,$9
	subu	$4,$9,$8
	addu	$10,$11,$6
	addu	$12,$24,$12
	addu	$4,$24,$4
	addu	$5,$24,$5
	addu	$13,$24,$13
	addu	$15,$24,$15
	addu	$10,$19,$10
	addu	$14,$19,$14
	sw	$3,12($sp)
	addu	$16,$19,$16
	subu	$3,$24,$7
	addiu	$25,$2,1024
	addu	$7,$24,$7
	subu	$2,$24,$8
	addu	$23,$24,$17
	sw	$12,40($sp)
	sw	$4,36($sp)
	sw	$5,32($sp)
	sw	$13,28($sp)
	sw	$15,24($sp)
	sw	$10,20($sp)
	sw	$14,16($sp)
	sw	$16,8($sp)
	sw	$2,56($sp)
	sw	$3,52($sp)
	sw	$7,48($sp)
	addu	$fp,$24,$8
	addu	$22,$24,$9
	addu	$21,$19,$6
	addu	$20,$19,$11
	addu	$18,$19,$18
	move	$17,$0
$L269:
	lw	$2,44($sp)
	lw	$5,48($sp)
	lbu	$10,0($2)
	lw	$3,52($sp)
	lw	$2,56($sp)
	lbu	$7,0($5)
	lbu	$5,0($24)
	lbu	$8,0($fp)
	lbu	$6,0($3)
	lbu	$4,0($2)
	addu	$3,$7,$5
	addu	$9,$8,$6
	sll	$2,$3,4
	addu	$4,$4,$10
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$4,$4,16
	sll	$2,$9,2
	addu	$2,$2,$9
	addu	$4,$4,$3
	addu	$3,$8,$7
	lbu	$11,0($23)
	subu	$4,$4,$2
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	lw	$2,40($sp)
	addu	$12,$10,$5
	addu	$6,$6,$11
	lbu	$9,0($2)
	addiu	$6,$6,16
	sll	$2,$12,2
	addu	$2,$2,$12
	addu	$6,$6,$3
	addu	$3,$10,$8
	subu	$6,$6,$2
	addu	$5,$5,$9
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$5,$5,16
	addu	$5,$5,$3
	lw	$3,32($sp)
	sra	$4,$4,5
	lbu	$14,0($3)
	lw	$3,28($sp)
	lw	$2,36($sp)
	addu	$4,$25,$4
	lbu	$15,0($3)
	lbu	$12,0($4)
	lw	$3,24($sp)
	addu	$4,$11,$7
	lbu	$13,0($2)
	sra	$6,$6,5
	sll	$2,$4,2
	lbu	$16,0($3)
	addu	$2,$2,$4
	addu	$3,$11,$10
	lbu	$4,0($22)
	addu	$6,$25,$6
	sb	$12,0($19)
	lbu	$12,0($6)
	subu	$5,$5,$2
	addu	$6,$9,$8
	sll	$2,$3,4
	addu	$7,$7,$13
	sll	$3,$3,2
	addu	$3,$3,$2
	sra	$5,$5,5
	sll	$2,$6,2
	addiu	$7,$7,16
	sb	$12,0($21)
	addu	$2,$2,$6
	addu	$7,$7,$3
	addu	$5,$25,$5
	addu	$3,$9,$11
	lbu	$6,0($5)
	subu	$7,$7,$2
	addu	$5,$13,$10
	sll	$2,$3,4
	addu	$8,$8,$14
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$8,$8,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$8,$8,$3
	sra	$7,$7,5
	addu	$3,$13,$9
	sb	$6,0($20)
	addu	$5,$14,$11
	addu	$7,$25,$7
	subu	$8,$8,$2
	addu	$10,$10,$4
	sll	$2,$3,4
	sll	$3,$3,2
	lbu	$6,0($7)
	addu	$3,$3,$2
	lw	$7,20($sp)
	sll	$2,$5,2
	addiu	$10,$10,16
	addu	$2,$2,$5
	addu	$10,$10,$3
	sra	$8,$8,5
	addu	$3,$14,$13
	sb	$6,0($7)
	addu	$5,$4,$9
	subu	$10,$10,$2
	addu	$11,$11,$15
	sll	$2,$3,4
	addu	$8,$25,$8
	sll	$3,$3,2
	addu	$3,$3,$2
	lbu	$6,0($8)
	sll	$2,$5,2
	addiu	$11,$11,16
	addu	$2,$2,$5
	addu	$4,$4,$14
	addu	$11,$11,$3
	sra	$10,$10,5
	sb	$6,0($18)
	addu	$15,$15,$13
	subu	$11,$11,$2
	addu	$10,$25,$10
	sll	$2,$4,4
	addu	$9,$9,$16
	sll	$4,$4,2
	lbu	$3,0($10)
	addu	$4,$4,$2
	lw	$5,16($sp)
	sra	$11,$11,5
	addiu	$9,$9,16
	sll	$2,$15,2
	addu	$2,$2,$15
	addu	$9,$9,$4
	addu	$11,$25,$11
	sb	$3,0($5)
	subu	$9,$9,$2
	lbu	$3,0($11)
	lw	$7,12($sp)
	sra	$9,$9,5
	sb	$3,0($7)
	addu	$9,$25,$9
	lbu	$2,0($9)
	lw	$3,8($sp)
	addiu	$17,$17,1
	sb	$2,0($3)
	lw	$5,56($sp)
	lw	$7,52($sp)
	addiu	$5,$5,1
	lw	$2,48($sp)
	lw	$3,44($sp)
	sw	$5,56($sp)
	lw	$5,40($sp)
	addiu	$7,$7,1
	addiu	$2,$2,1
	addiu	$3,$3,1
	addiu	$5,$5,1
	sw	$7,52($sp)
	lw	$7,36($sp)
	sw	$2,48($sp)
	sw	$3,44($sp)
	lw	$2,32($sp)
	lw	$3,28($sp)
	sw	$5,40($sp)
	lw	$5,24($sp)
	addiu	$7,$7,1
	addiu	$2,$2,1
	addiu	$3,$3,1
	addiu	$5,$5,1
	sw	$7,36($sp)
	lw	$7,20($sp)
	sw	$2,32($sp)
	sw	$3,28($sp)
	lw	$2,16($sp)
	lw	$3,12($sp)
	sw	$5,24($sp)
	lw	$5,8($sp)
	addiu	$7,$7,1
	sw	$7,20($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	addiu	$5,$5,1
	li	$7,8			# 0x8
	addiu	$19,$19,1
	addiu	$24,$24,1
	addiu	$fp,$fp,1
	addiu	$23,$23,1
	addiu	$22,$22,1
	addiu	$21,$21,1
	addiu	$20,$20,1
	addiu	$18,$18,1
	sw	$2,16($sp)
	sw	$3,12($sp)
	bne	$17,$7,$L269
	sw	$5,8($sp)

	lw	$fp,100($sp)
	lw	$23,96($sp)
	lw	$22,92($sp)
	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	j	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_v_lowpass
	.align	2
	.ent	put_h264_qpel8_hv_lowpass
	.type	put_h264_qpel8_hv_lowpass, @function
put_h264_qpel8_hv_lowpass:
	.set	nomips16
	.frame	$sp,104,$31		# vars= 56, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,100($sp)
	sw	$23,96($sp)
	sw	$22,92($sp)
	sw	$21,88($sp)
	sw	$20,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	.cprestore	0
	lw	$12,124($sp)
	lw	$8,120($sp)
	sll	$2,$12,1
	move	$14,$5
	subu	$9,$6,$2
	move	$16,$4
	move	$19,$7
	sll	$17,$8,1
	move	$10,$5
	move	$11,$0
	li	$13,13			# 0xd
$L273:
	lbu	$2,0($9)
	lbu	$4,1($9)
	lbu	$7,-1($9)
	lbu	$5,2($9)
	lbu	$3,3($9)
	addu	$4,$4,$2
	lbu	$2,-2($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,0($10)
	lbu	$2,1($9)
	lbu	$4,2($9)
	lbu	$7,0($9)
	lbu	$5,3($9)
	lbu	$3,4($9)
	addu	$4,$4,$2
	lbu	$2,-1($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,2($10)
	lbu	$2,2($9)
	lbu	$4,3($9)
	lbu	$7,1($9)
	lbu	$5,4($9)
	lbu	$3,5($9)
	addu	$4,$4,$2
	lbu	$2,0($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,4($10)
	lbu	$2,3($9)
	lbu	$4,4($9)
	lbu	$7,2($9)
	lbu	$5,5($9)
	lbu	$3,6($9)
	addu	$4,$4,$2
	lbu	$2,1($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,6($10)
	lbu	$2,4($9)
	lbu	$4,5($9)
	lbu	$7,3($9)
	lbu	$5,6($9)
	addu	$4,$4,$2
	lbu	$3,7($9)
	lbu	$2,2($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,8($10)
	lbu	$2,5($9)
	lbu	$4,6($9)
	lbu	$7,4($9)
	lbu	$5,7($9)
	lbu	$3,8($9)
	addu	$4,$4,$2
	lbu	$2,3($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,10($10)
	lbu	$2,6($9)
	lbu	$4,7($9)
	lbu	$7,5($9)
	lbu	$5,8($9)
	lbu	$3,9($9)
	addu	$4,$4,$2
	lbu	$2,4($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,12($10)
	lbu	$2,7($9)
	lbu	$4,8($9)
	lbu	$5,9($9)
	lbu	$7,6($9)
	addu	$4,$4,$2
	lbu	$3,10($9)
	lbu	$2,5($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$3,$3,$2
	addu	$4,$4,$6
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	addiu	$11,$11,1
	sh	$3,14($10)
	addu	$9,$9,$12
	bne	$11,$13,$L273
	addu	$10,$10,$17

	sll	$5,$8,4
	sll	$7,$8,2
	sll	$3,$17,2
	sll	$2,$17,4
	subu	$2,$2,$3
	subu	$13,$5,$7
	subu	$3,$8,$13
	addu	$2,$2,$17
	addu	$2,$14,$2
	sll	$8,$8,3
	sll	$3,$3,1
	addu	$24,$2,$3
	subu	$2,$8,$17
	addu	$2,$24,$2
	sll	$9,$19,1
	sll	$18,$19,2
	sll	$4,$19,3
	subu	$3,$5,$17
	sw	$2,44($sp)
	lw	$2,%got(ff_cropTbl)($28)
	subu	$15,$4,$19
	addu	$12,$18,$19
	addu	$10,$17,$8
	addu	$11,$17,$5
	addu	$6,$9,$19
	addu	$3,$24,$3
	addu	$14,$7,$5
	subu	$4,$4,$9
	addu	$10,$24,$10
	addu	$13,$24,$13
	sw	$3,32($sp)
	addu	$11,$24,$11
	subu	$3,$24,$17
	addu	$14,$24,$14
	addu	$6,$16,$6
	addu	$12,$16,$12
	addu	$4,$16,$4
	addu	$15,$16,$15
	addiu	$25,$2,1024
	subu	$2,$24,$7
	addu	$fp,$24,$17
	addu	$20,$16,$19
	sw	$10,40($sp)
	sw	$13,36($sp)
	sw	$11,28($sp)
	sw	$14,24($sp)
	sw	$6,20($sp)
	sw	$12,16($sp)
	sw	$4,12($sp)
	sw	$15,8($sp)
	sw	$2,52($sp)
	sw	$3,48($sp)
	addu	$23,$24,$7
	addu	$22,$24,$8
	addu	$21,$24,$5
	addu	$19,$16,$9
	addu	$18,$16,$18
	move	$17,$0
$L274:
	lw	$2,44($sp)
	lw	$3,48($sp)
	lh	$10,0($2)
	lw	$2,52($sp)
	lh	$7,0($fp)
	lh	$5,0($24)
	lh	$8,0($23)
	lh	$6,0($3)
	lh	$4,0($2)
	addu	$3,$7,$5
	addu	$9,$8,$6
	sll	$2,$3,4
	addu	$4,$4,$10
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$4,$4,512
	sll	$2,$9,2
	addu	$2,$2,$9
	addu	$4,$4,$3
	addu	$3,$8,$7
	lh	$11,0($22)
	subu	$4,$4,$2
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	lw	$2,40($sp)
	addu	$12,$10,$5
	addu	$6,$6,$11
	lh	$9,0($2)
	addiu	$6,$6,512
	sll	$2,$12,2
	addu	$2,$2,$12
	addu	$6,$6,$3
	addu	$3,$10,$8
	subu	$6,$6,$2
	addu	$5,$5,$9
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$5,$5,512
	addu	$5,$5,$3
	lw	$3,32($sp)
	sra	$4,$4,10
	lh	$14,0($3)
	lw	$3,28($sp)
	lw	$2,36($sp)
	lh	$15,0($3)
	lw	$3,24($sp)
	addu	$4,$25,$4
	lbu	$12,0($4)
	lh	$3,0($3)
	addu	$4,$11,$7
	lh	$13,0($2)
	sra	$6,$6,10
	sll	$2,$4,2
	sw	$3,56($sp)
	addu	$2,$2,$4
	addu	$3,$11,$10
	lh	$4,0($21)
	addu	$6,$25,$6
	sb	$12,0($16)
	lbu	$12,0($6)
	subu	$5,$5,$2
	addu	$6,$9,$8
	sll	$2,$3,4
	addu	$7,$7,$13
	sll	$3,$3,2
	addu	$3,$3,$2
	sra	$5,$5,10
	sll	$2,$6,2
	addiu	$7,$7,512
	sb	$12,0($20)
	addu	$2,$2,$6
	addu	$7,$7,$3
	addu	$5,$25,$5
	addu	$3,$9,$11
	lbu	$6,0($5)
	subu	$7,$7,$2
	addu	$5,$13,$10
	sll	$2,$3,4
	addu	$8,$8,$14
	sll	$3,$3,2
	addu	$3,$3,$2
	sra	$7,$7,10
	sll	$2,$5,2
	addiu	$8,$8,512
	sb	$6,0($19)
	addu	$2,$2,$5
	addu	$8,$8,$3
	addu	$7,$25,$7
	addu	$3,$13,$9
	lbu	$6,0($7)
	addu	$5,$14,$11
	lw	$7,20($sp)
	subu	$8,$8,$2
	addu	$10,$10,$4
	sll	$2,$3,4
	sll	$3,$3,2
	addu	$3,$3,$2
	sra	$8,$8,10
	sll	$2,$5,2
	addiu	$10,$10,512
	sb	$6,0($7)
	addu	$2,$2,$5
	addu	$10,$10,$3
	addu	$8,$25,$8
	addu	$3,$14,$13
	addu	$5,$4,$9
	subu	$10,$10,$2
	lbu	$6,0($8)
	sll	$2,$3,4
	addu	$11,$11,$15
	sll	$3,$3,2
	addu	$3,$3,$2
	addiu	$11,$11,512
	sll	$2,$5,2
	sb	$6,0($18)
	addu	$2,$2,$5
	addu	$11,$11,$3
	subu	$11,$11,$2
	lw	$2,56($sp)
	addu	$4,$4,$14
	sra	$10,$10,10
	addu	$15,$15,$13
	addu	$9,$9,$2
	addu	$10,$25,$10
	sll	$2,$4,4
	sll	$4,$4,2
	lbu	$3,0($10)
	addu	$4,$4,$2
	lw	$5,16($sp)
	sra	$11,$11,10
	addiu	$9,$9,512
	sll	$2,$15,2
	addu	$2,$2,$15
	addu	$9,$9,$4
	addu	$11,$25,$11
	sb	$3,0($5)
	subu	$9,$9,$2
	lbu	$3,0($11)
	lw	$7,12($sp)
	sra	$9,$9,10
	sb	$3,0($7)
	addu	$9,$25,$9
	lbu	$2,0($9)
	lw	$3,8($sp)
	addiu	$17,$17,1
	sb	$2,0($3)
	lw	$5,52($sp)
	lw	$7,48($sp)
	lw	$2,44($sp)
	lw	$3,40($sp)
	addiu	$5,$5,2
	addiu	$7,$7,2
	addiu	$2,$2,2
	addiu	$3,$3,2
	sw	$5,52($sp)
	lw	$5,36($sp)
	sw	$7,48($sp)
	sw	$2,44($sp)
	lw	$7,32($sp)
	lw	$2,28($sp)
	sw	$3,40($sp)
	lw	$3,24($sp)
	addiu	$5,$5,2
	addiu	$7,$7,2
	addiu	$2,$2,2
	addiu	$3,$3,2
	sw	$5,36($sp)
	lw	$5,20($sp)
	sw	$7,32($sp)
	sw	$2,28($sp)
	lw	$7,16($sp)
	lw	$2,12($sp)
	sw	$3,24($sp)
	lw	$3,8($sp)
	addiu	$5,$5,1
	sw	$5,20($sp)
	addiu	$7,$7,1
	addiu	$2,$2,1
	addiu	$3,$3,1
	li	$5,8			# 0x8
	addiu	$16,$16,1
	addiu	$24,$24,2
	addiu	$fp,$fp,2
	addiu	$23,$23,2
	addiu	$22,$22,2
	addiu	$21,$21,2
	addiu	$20,$20,1
	addiu	$19,$19,1
	addiu	$18,$18,1
	sw	$7,16($sp)
	sw	$2,12($sp)
	bne	$17,$5,$L274
	sw	$3,8($sp)

	lw	$fp,100($sp)
	lw	$23,96($sp)
	lw	$22,92($sp)
	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	j	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	put_h264_qpel8_hv_lowpass
	.align	2
	.ent	put_h264_qpel16_v_lowpass
	.type	put_h264_qpel16_v_lowpass, @function
put_h264_qpel16_v_lowpass:
	.set	nomips16
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	move	$18,$6
	move	$19,$7
	move	$16,$4
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	move	$17,$5

	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	move	$7,$19

	sll	$2,$19,3
	sll	$3,$18,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	move	$7,$19

	lw	$28,16($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	.option	pic0
	j	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_v_lowpass
	.align	2
	.ent	put_h264_qpel16_h_lowpass
	.type	put_h264_qpel16_h_lowpass, @function
put_h264_qpel16_h_lowpass:
	.set	nomips16
	.frame	$sp,48,$31		# vars= 0, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	sw	$19,40($sp)
	sw	$18,36($sp)
	sw	$17,32($sp)
	sw	$16,28($sp)
	.cprestore	16
	move	$18,$6
	move	$19,$7
	move	$16,$4
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$17,$5

	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$19

	sll	$2,$19,3
	sll	$3,$18,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$4,$16
	move	$5,$17
	move	$6,$18
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$19

	lw	$28,16($sp)
	addiu	$4,$16,8
	addiu	$5,$17,8
	move	$6,$18
	move	$7,$19
	lw	$31,44($sp)
	lw	$19,40($sp)
	lw	$18,36($sp)
	lw	$17,32($sp)
	lw	$16,28($sp)
	.option	pic0
	j	put_h264_qpel8_h_lowpass
	.option	pic2
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_h_lowpass
	.align	2
	.ent	put_h264_qpel16_hv_lowpass
	.type	put_h264_qpel16_hv_lowpass, @function
put_h264_qpel16_hv_lowpass:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 8/0, args= 24, gp= 8
	.mask	0x807f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$22,56($sp)
	sw	$21,52($sp)
	sw	$20,48($sp)
	sw	$19,44($sp)
	sw	$18,40($sp)
	sw	$17,36($sp)
	sw	$16,32($sp)
	.cprestore	24
	lw	$18,84($sp)
	lw	$20,80($sp)
	move	$19,$7
	addiu	$22,$5,16
	move	$16,$4
	move	$17,$6
	move	$21,$5
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	addiu	$4,$16,8
	move	$5,$22
	addiu	$6,$17,8
	move	$7,$19
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	sll	$2,$18,3
	sll	$3,$19,3
	addu	$17,$17,$2
	addu	$16,$16,$3
	move	$5,$21
	move	$4,$16
	move	$6,$17
	move	$7,$19
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	lw	$28,24($sp)
	sw	$20,80($sp)
	sw	$18,84($sp)
	addiu	$4,$16,8
	move	$5,$22
	addiu	$6,$17,8
	move	$7,$19
	lw	$31,60($sp)
	lw	$22,56($sp)
	lw	$21,52($sp)
	lw	$20,48($sp)
	lw	$19,44($sp)
	lw	$18,40($sp)
	lw	$17,36($sp)
	lw	$16,32($sp)
	.option	pic0
	j	put_h264_qpel8_hv_lowpass
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_qpel16_hv_lowpass
	.align	2
	.ent	avg_h264_qpel8_h_lowpass
	.type	avg_h264_qpel8_h_lowpass, @function
avg_h264_qpel8_h_lowpass:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$9,$4
	move	$8,$5
	move	$14,$6
	move	$12,$7
	addiu	$10,$2,1024
	move	$11,$0
	li	$13,8			# 0x8
$L285:
	lbu	$6,0($8)
	lbu	$4,1($8)
	lbu	$7,3($8)
	lbu	$2,-1($8)
	lbu	$3,-2($8)
	lbu	$5,2($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,0($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,0($9)
	lbu	$6,1($8)
	lbu	$4,2($8)
	lbu	$7,4($8)
	lbu	$2,0($8)
	lbu	$3,-1($8)
	lbu	$5,3($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,1($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,1($9)
	lbu	$6,2($8)
	lbu	$4,3($8)
	lbu	$7,5($8)
	lbu	$2,1($8)
	lbu	$3,0($8)
	lbu	$5,4($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,2($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,2($9)
	lbu	$6,3($8)
	lbu	$4,4($8)
	lbu	$7,6($8)
	lbu	$2,2($8)
	lbu	$3,1($8)
	lbu	$5,5($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,3($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,3($9)
	lbu	$6,4($8)
	lbu	$4,5($8)
	lbu	$7,7($8)
	lbu	$2,3($8)
	lbu	$3,2($8)
	lbu	$5,6($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,4($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,4($9)
	lbu	$6,5($8)
	lbu	$4,6($8)
	lbu	$7,8($8)
	lbu	$2,4($8)
	lbu	$3,3($8)
	lbu	$5,7($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,5($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,5($9)
	lbu	$6,6($8)
	lbu	$4,7($8)
	lbu	$7,9($8)
	lbu	$2,5($8)
	lbu	$3,4($8)
	lbu	$5,8($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,6($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,6($9)
	lbu	$4,8($8)
	lbu	$6,7($8)
	lbu	$2,6($8)
	lbu	$3,5($8)
	lbu	$7,10($8)
	lbu	$5,9($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,7($9)
	addu	$3,$10,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	addiu	$11,$11,1
	sb	$2,7($9)
	addu	$8,$8,$12
	bne	$11,$13,$L285
	addu	$9,$9,$14

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_h_lowpass
	.align	2
	.ent	avg_h264_qpel8_v_lowpass
	.type	avg_h264_qpel8_v_lowpass, @function
avg_h264_qpel8_v_lowpass:
	.set	nomips16
	.frame	$sp,104,$31		# vars= 56, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,100($sp)
	sw	$23,96($sp)
	sw	$22,92($sp)
	sw	$21,88($sp)
	sw	$20,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	.cprestore	0
	sll	$8,$7,1
	move	$24,$5
	addu	$2,$8,$7
	addu	$2,$24,$2
	sll	$9,$7,3
	sll	$11,$6,1
	sll	$20,$7,2
	sll	$3,$6,3
	sw	$2,36($sp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$25,$4
	addu	$15,$8,$9
	addu	$12,$20,$7
	addu	$13,$9,$7
	subu	$4,$9,$8
	subu	$5,$9,$7
	sll	$18,$6,2
	subu	$16,$3,$6
	subu	$3,$3,$11
	addu	$14,$18,$6
	addu	$20,$24,$20
	addu	$10,$11,$6
	addu	$12,$24,$12
	addu	$4,$24,$4
	addu	$5,$24,$5
	addu	$13,$24,$13
	addu	$15,$24,$15
	addu	$23,$25,$3
	addiu	$19,$2,1024
	subu	$3,$24,$7
	subu	$2,$24,$8
	addu	$7,$24,$7
	addu	$8,$24,$8
	addu	$9,$24,$9
	sw	$20,32($sp)
	sw	$12,28($sp)
	sw	$4,24($sp)
	sw	$5,20($sp)
	sw	$13,12($sp)
	sw	$15,8($sp)
	addu	$17,$25,$10
	addu	$fp,$25,$14
	addu	$22,$25,$16
	sw	$2,52($sp)
	sw	$3,48($sp)
	sw	$7,44($sp)
	sw	$8,40($sp)
	sw	$9,16($sp)
	addu	$21,$25,$6
	addu	$20,$25,$11
	addu	$18,$25,$18
	sw	$0,60($sp)
$L289:
	lw	$2,44($sp)
	lw	$3,36($sp)
	lbu	$8,0($2)
	lw	$2,40($sp)
	lbu	$10,0($3)
	lbu	$9,0($2)
	lw	$3,48($sp)
	lw	$2,52($sp)
	lbu	$7,0($24)
	lbu	$5,0($3)
	lbu	$3,0($2)
	addu	$4,$8,$7
	addu	$6,$9,$5
	sll	$2,$4,4
	addu	$3,$3,$10
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$6,2
	addu	$2,$2,$6
	addu	$3,$3,$4
	subu	$3,$3,$2
	lw	$2,32($sp)
	sra	$3,$3,5
	lbu	$12,0($2)
	addu	$4,$9,$8
	addu	$3,$19,$3
	lbu	$11,0($3)
	sll	$2,$4,4
	addu	$3,$10,$7
	addu	$5,$5,$12
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$5,$5,16
	sll	$2,$3,2
	addu	$2,$2,$3
	addu	$5,$5,$4
	subu	$5,$5,$2
	lw	$2,24($sp)
	lbu	$6,0($25)
	lbu	$14,0($2)
	lw	$3,28($sp)
	lw	$2,16($sp)
	addiu	$6,$6,1
	lbu	$13,0($2)
	addu	$6,$6,$11
	lw	$2,8($sp)
	lbu	$11,0($3)
	lw	$3,20($sp)
	lbu	$2,0($2)
	lbu	$16,0($3)
	lw	$3,12($sp)
	sra	$6,$6,1
	lbu	$15,0($3)
	sra	$5,$5,5
	sw	$2,56($sp)
	sb	$6,0($25)
	lbu	$3,0($21)
	addu	$4,$10,$9
	addu	$5,$19,$5
	lbu	$6,0($5)
	sll	$2,$4,4
	addu	$5,$12,$8
	addu	$7,$7,$11
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$7,$7,16
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$7,$7,$4
	subu	$7,$7,$2
	sra	$3,$3,1
	sb	$3,0($21)
	addu	$4,$12,$10
	sra	$7,$7,5
	addu	$5,$11,$9
	lbu	$3,0($20)
	sll	$2,$4,4
	addu	$7,$19,$7
	addu	$8,$8,$14
	sll	$4,$4,2
	lbu	$6,0($7)
	addu	$4,$4,$2
	addiu	$8,$8,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$8,$8,$4
	addiu	$3,$3,1
	addu	$3,$3,$6
	subu	$8,$8,$2
	sra	$3,$3,1
	sra	$8,$8,5
	sb	$3,0($20)
	addu	$4,$11,$12
	lbu	$3,0($17)
	addu	$8,$19,$8
	lbu	$6,0($8)
	addu	$5,$14,$10
	sll	$2,$4,4
	addu	$9,$9,$16
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$9,$9,16
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$9,$9,$4
	subu	$9,$9,$2
	sra	$3,$3,1
	sb	$3,0($17)
	sra	$9,$9,5
	lbu	$3,0($18)
	addu	$4,$14,$11
	addu	$9,$19,$9
	lbu	$6,0($9)
	addu	$5,$16,$12
	sll	$2,$4,4
	addu	$10,$10,$13
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$10,$10,16
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$10,$10,$4
	subu	$10,$10,$2
	sra	$3,$3,1
	sb	$3,0($18)
	sra	$10,$10,5
	lbu	$3,0($fp)
	addu	$10,$19,$10
	lbu	$6,0($10)
	addu	$4,$16,$14
	addu	$5,$13,$11
	sll	$2,$4,4
	addu	$12,$12,$15
	sll	$4,$4,2
	addiu	$3,$3,1
	addu	$4,$4,$2
	addiu	$12,$12,16
	sll	$2,$5,2
	addu	$3,$3,$6
	addu	$12,$12,$4
	addu	$2,$2,$5
	sra	$3,$3,1
	sb	$3,0($fp)
	subu	$12,$12,$2
	lw	$3,56($sp)
	sra	$12,$12,5
	lbu	$2,0($23)
	addu	$13,$13,$16
	addu	$12,$19,$12
	lbu	$4,0($12)
	addu	$15,$15,$14
	addu	$11,$11,$3
	sll	$3,$13,4
	sll	$13,$13,2
	addu	$13,$13,$3
	addiu	$11,$11,16
	sll	$3,$15,2
	addiu	$2,$2,1
	addu	$3,$3,$15
	addu	$11,$11,$13
	addu	$2,$2,$4
	subu	$11,$11,$3
	sra	$2,$2,1
	sb	$2,0($23)
	sra	$11,$11,5
	lbu	$2,0($22)
	addu	$11,$19,$11
	lbu	$3,0($11)
	addiu	$2,$2,1
	addu	$2,$2,$3
	lw	$3,60($sp)
	sra	$2,$2,1
	addiu	$3,$3,1
	sw	$3,60($sp)
	sb	$2,0($22)
	lw	$2,52($sp)
	lw	$3,48($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,52($sp)
	sw	$3,48($sp)
	lw	$2,44($sp)
	lw	$3,40($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,44($sp)
	sw	$3,40($sp)
	lw	$2,36($sp)
	lw	$3,32($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,36($sp)
	sw	$3,32($sp)
	lw	$2,28($sp)
	lw	$3,24($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,28($sp)
	sw	$3,24($sp)
	lw	$2,20($sp)
	lw	$3,16($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,20($sp)
	lw	$2,12($sp)
	sw	$3,16($sp)
	lw	$3,8($sp)
	addiu	$2,$2,1
	addiu	$3,$3,1
	sw	$2,12($sp)
	lw	$2,60($sp)
	sw	$3,8($sp)
	li	$3,8			# 0x8
	addiu	$25,$25,1
	addiu	$24,$24,1
	addiu	$21,$21,1
	addiu	$20,$20,1
	addiu	$17,$17,1
	addiu	$18,$18,1
	addiu	$fp,$fp,1
	addiu	$23,$23,1
	bne	$2,$3,$L289
	addiu	$22,$22,1

	lw	$fp,100($sp)
	lw	$23,96($sp)
	lw	$22,92($sp)
	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	j	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_v_lowpass
	.align	2
	.ent	avg_h264_qpel8_hv_lowpass
	.type	avg_h264_qpel8_hv_lowpass, @function
avg_h264_qpel8_hv_lowpass:
	.set	nomips16
	.frame	$sp,104,$31		# vars= 56, regs= 9/0, args= 0, gp= 8
	.mask	0x40ff0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-104
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$fp,100($sp)
	sw	$23,96($sp)
	sw	$22,92($sp)
	sw	$21,88($sp)
	sw	$20,84($sp)
	sw	$19,80($sp)
	sw	$18,76($sp)
	sw	$17,72($sp)
	sw	$16,68($sp)
	.cprestore	0
	lw	$12,124($sp)
	lw	$8,120($sp)
	sll	$2,$12,1
	move	$14,$5
	subu	$9,$6,$2
	sw	$4,104($sp)
	move	$18,$7
	sll	$17,$8,1
	move	$10,$5
	move	$11,$0
	li	$13,13			# 0xd
$L293:
	lbu	$2,0($9)
	lbu	$4,1($9)
	lbu	$7,-1($9)
	lbu	$5,2($9)
	lbu	$3,3($9)
	addu	$4,$4,$2
	lbu	$2,-2($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,0($10)
	lbu	$2,1($9)
	lbu	$4,2($9)
	lbu	$7,0($9)
	lbu	$5,3($9)
	lbu	$3,4($9)
	addu	$4,$4,$2
	lbu	$2,-1($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,2($10)
	lbu	$2,2($9)
	lbu	$4,3($9)
	lbu	$7,1($9)
	lbu	$5,4($9)
	lbu	$3,5($9)
	addu	$4,$4,$2
	lbu	$2,0($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,4($10)
	lbu	$2,3($9)
	lbu	$4,4($9)
	lbu	$7,2($9)
	lbu	$5,5($9)
	lbu	$3,6($9)
	addu	$4,$4,$2
	lbu	$2,1($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,6($10)
	lbu	$2,4($9)
	lbu	$4,5($9)
	lbu	$7,3($9)
	lbu	$5,6($9)
	addu	$4,$4,$2
	lbu	$3,7($9)
	lbu	$2,2($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,8($10)
	lbu	$2,5($9)
	lbu	$4,6($9)
	lbu	$7,4($9)
	lbu	$5,7($9)
	lbu	$3,8($9)
	addu	$4,$4,$2
	lbu	$2,3($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,10($10)
	lbu	$2,6($9)
	lbu	$4,7($9)
	lbu	$7,5($9)
	lbu	$5,8($9)
	lbu	$3,9($9)
	addu	$4,$4,$2
	lbu	$2,4($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,12($10)
	lbu	$2,7($9)
	lbu	$4,8($9)
	lbu	$5,9($9)
	lbu	$7,6($9)
	addu	$4,$4,$2
	lbu	$3,10($9)
	lbu	$2,5($9)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$3,$3,$2
	addu	$4,$4,$6
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	addiu	$11,$11,1
	sh	$3,14($10)
	addu	$9,$9,$12
	bne	$11,$13,$L293
	addu	$10,$10,$17

	sll	$5,$8,4
	sll	$7,$8,2
	sll	$3,$17,2
	sll	$2,$17,4
	subu	$13,$5,$7
	subu	$2,$2,$3
	addu	$2,$2,$17
	subu	$3,$8,$13
	addu	$2,$14,$2
	sll	$8,$8,3
	sll	$3,$3,1
	addu	$24,$2,$3
	subu	$2,$8,$17
	addu	$2,$24,$2
	sll	$9,$18,1
	sll	$4,$18,3
	subu	$3,$5,$17
	sll	$16,$18,2
	sw	$2,40($sp)
	lw	$2,104($sp)
	subu	$15,$4,$18
	addu	$12,$16,$18
	addu	$6,$9,$18
	addu	$3,$24,$3
	subu	$4,$4,$9
	sw	$3,24($sp)
	addu	$fp,$2,$6
	subu	$3,$24,$7
	addu	$23,$2,$12
	addu	$22,$2,$4
	addu	$21,$2,$15
	lw	$2,%got(ff_cropTbl)($28)
	addu	$14,$7,$5
	addu	$10,$17,$8
	addu	$11,$17,$5
	sw	$3,56($sp)
	lw	$3,104($sp)
	addu	$10,$24,$10
	addu	$13,$24,$13
	addu	$11,$24,$11
	addu	$14,$24,$14
	addiu	$25,$2,1024
	addu	$7,$24,$7
	subu	$2,$24,$17
	addu	$8,$24,$8
	addu	$17,$24,$17
	addu	$5,$24,$5
	addu	$20,$3,$18
	sw	$10,32($sp)
	sw	$13,28($sp)
	sw	$11,16($sp)
	sw	$14,12($sp)
	sw	$2,52($sp)
	sw	$17,48($sp)
	sw	$7,44($sp)
	sw	$8,36($sp)
	sw	$5,20($sp)
	addu	$19,$3,$9
	addu	$18,$3,$16
	sw	$0,8($sp)
$L294:
	lw	$2,48($sp)
	lw	$3,40($sp)
	lh	$8,0($2)
	lw	$2,44($sp)
	lh	$10,0($3)
	lh	$9,0($2)
	lw	$3,52($sp)
	lw	$2,56($sp)
	lh	$7,0($24)
	lh	$5,0($3)
	lh	$3,0($2)
	addu	$4,$8,$7
	addu	$6,$9,$5
	sll	$2,$4,4
	addu	$3,$3,$10
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,512
	sll	$2,$6,2
	addu	$2,$2,$6
	addu	$3,$3,$4
	subu	$3,$3,$2
	lw	$2,36($sp)
	sra	$3,$3,10
	lh	$12,0($2)
	lw	$2,104($sp)
	addu	$4,$9,$8
	addu	$3,$25,$3
	lbu	$11,0($3)
	lbu	$6,0($2)
	addu	$3,$10,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addu	$5,$5,$12
	sll	$2,$3,2
	addu	$2,$2,$3
	addiu	$5,$5,512
	lw	$3,32($sp)
	addu	$5,$5,$4
	addiu	$6,$6,1
	addu	$6,$6,$11
	subu	$5,$5,$2
	lh	$11,0($3)
	lw	$2,28($sp)
	lw	$3,24($sp)
	lh	$14,0($2)
	lh	$16,0($3)
	lw	$2,20($sp)
	lw	$3,16($sp)
	lh	$13,0($2)
	lh	$15,0($3)
	lw	$2,12($sp)
	lw	$3,104($sp)
	sra	$6,$6,1
	lh	$17,0($2)
	sra	$5,$5,10
	sb	$6,0($3)
	lbu	$3,0($20)
	addu	$4,$10,$9
	addu	$5,$25,$5
	lbu	$6,0($5)
	sll	$2,$4,4
	addu	$5,$12,$8
	addu	$7,$7,$11
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$7,$7,512
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$7,$7,$4
	subu	$7,$7,$2
	sra	$3,$3,1
	sb	$3,0($20)
	addu	$4,$12,$10
	sra	$7,$7,10
	addu	$5,$11,$9
	lbu	$3,0($19)
	sll	$2,$4,4
	addu	$7,$25,$7
	addu	$8,$8,$14
	sll	$4,$4,2
	lbu	$6,0($7)
	addu	$4,$4,$2
	addiu	$8,$8,512
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$8,$8,$4
	addiu	$3,$3,1
	addu	$3,$3,$6
	subu	$8,$8,$2
	sra	$3,$3,1
	sra	$8,$8,10
	sb	$3,0($19)
	addu	$4,$11,$12
	lbu	$3,0($fp)
	addu	$8,$25,$8
	lbu	$6,0($8)
	addu	$5,$14,$10
	sll	$2,$4,4
	addu	$9,$9,$16
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$9,$9,512
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$9,$9,$4
	subu	$9,$9,$2
	sra	$3,$3,1
	sb	$3,0($fp)
	sra	$9,$9,10
	lbu	$3,0($18)
	addu	$4,$14,$11
	addu	$9,$25,$9
	lbu	$6,0($9)
	addu	$5,$16,$12
	sll	$2,$4,4
	addu	$10,$10,$13
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	sll	$2,$5,2
	addiu	$10,$10,512
	addu	$2,$2,$5
	addu	$3,$3,$6
	addu	$10,$10,$4
	subu	$10,$10,$2
	sra	$3,$3,1
	sb	$3,0($18)
	sra	$10,$10,10
	lbu	$3,0($23)
	addu	$4,$16,$14
	addu	$10,$25,$10
	lbu	$6,0($10)
	addu	$5,$13,$11
	sll	$2,$4,4
	addu	$12,$12,$15
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,1
	addiu	$12,$12,512
	sll	$2,$5,2
	addu	$12,$12,$4
	addu	$2,$2,$5
	addu	$3,$3,$6
	subu	$12,$12,$2
	sra	$3,$3,1
	sb	$3,0($23)
	sra	$12,$12,10
	lbu	$2,0($22)
	addu	$13,$13,$16
	addu	$12,$25,$12
	lbu	$4,0($12)
	sll	$3,$13,4
	addu	$15,$15,$14
	addu	$11,$11,$17
	sll	$13,$13,2
	addu	$13,$13,$3
	addiu	$11,$11,512
	sll	$3,$15,2
	addiu	$2,$2,1
	addu	$3,$3,$15
	addu	$11,$11,$13
	addu	$2,$2,$4
	subu	$11,$11,$3
	sra	$2,$2,1
	sb	$2,0($22)
	sra	$11,$11,10
	lbu	$2,0($21)
	addu	$11,$25,$11
	lbu	$3,0($11)
	addiu	$2,$2,1
	addu	$2,$2,$3
	lw	$3,8($sp)
	sra	$2,$2,1
	addiu	$3,$3,1
	sw	$3,8($sp)
	sb	$2,0($21)
	lw	$2,104($sp)
	lw	$3,56($sp)
	addiu	$2,$2,1
	sw	$2,104($sp)
	lw	$2,52($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,56($sp)
	sw	$2,52($sp)
	lw	$3,48($sp)
	lw	$2,44($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,48($sp)
	sw	$2,44($sp)
	lw	$3,40($sp)
	lw	$2,36($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,40($sp)
	sw	$2,36($sp)
	lw	$3,32($sp)
	lw	$2,28($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,32($sp)
	sw	$2,28($sp)
	lw	$3,24($sp)
	lw	$2,20($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,24($sp)
	lw	$3,16($sp)
	sw	$2,20($sp)
	lw	$2,12($sp)
	addiu	$3,$3,2
	addiu	$2,$2,2
	sw	$3,16($sp)
	lw	$3,8($sp)
	sw	$2,12($sp)
	li	$2,8			# 0x8
	addiu	$24,$24,2
	addiu	$20,$20,1
	addiu	$19,$19,1
	addiu	$fp,$fp,1
	addiu	$18,$18,1
	addiu	$23,$23,1
	addiu	$22,$22,1
	bne	$3,$2,$L294
	addiu	$21,$21,1

	lw	$fp,100($sp)
	lw	$23,96($sp)
	lw	$22,92($sp)
	lw	$21,88($sp)
	lw	$20,84($sp)
	lw	$19,80($sp)
	lw	$18,76($sp)
	lw	$17,72($sp)
	lw	$16,68($sp)
	j	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_hv_lowpass
	.align	2
	.ent	put_h264_qpel2_mc00_c
	.type	put_h264_qpel2_mc00_c, @function
put_h264_qpel2_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lbu	$2,1($5)
	lbu	$3,0($5)
	sll	$2,$2,8
	or	$2,$2,$3
	sh	$2,0($4)
	addu	$5,$5,$6
	lbu	$2,1($5)
	lbu	$3,0($5)
	sll	$2,$2,8
	or	$2,$2,$3
	addu	$4,$4,$6
	j	$31
	sh	$2,0($4)

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc00_c
	.align	2
	.ent	put_h264_qpel2_mc10_c
	.type	put_h264_qpel2_mc10_c, @function
put_h264_qpel2_mc10_c:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 8, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	16
	addiu	$17,$sp,24
	move	$19,$6
	move	$16,$5
	move	$18,$4
	li	$6,2			# 0x2
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$7,$19

	lbu	$4,1($16)
	lbu	$2,1($17)
	lbu	$3,0($16)
	lbu	$5,24($sp)
	sll	$4,$4,8
	sll	$2,$2,8
	or	$4,$4,$3
	or	$2,$2,$5
	li	$5,-16908288			# 0xfffffffffefe0000
	xor	$3,$2,$4
	ori	$5,$5,0xfefe
	and	$3,$3,$5
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sh	$2,0($18)
	addu	$16,$16,$19
	lbu	$4,1($16)
	lbu	$2,3($17)
	lbu	$3,0($16)
	lbu	$6,2($17)
	sll	$4,$4,8
	sll	$2,$2,8
	or	$4,$4,$3
	or	$2,$2,$6
	xor	$3,$2,$4
	and	$3,$3,$5
	srl	$3,$3,1
	or	$2,$2,$4
	lw	$31,52($sp)
	addu	$18,$18,$19
	subu	$2,$2,$3
	lw	$28,16($sp)
	sh	$2,0($18)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc10_c
	.align	2
	.ent	put_h264_qpel2_mc20_c
	.type	put_h264_qpel2_mc20_c, @function
put_h264_qpel2_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc20_c
	.align	2
	.ent	put_h264_qpel2_mc30_c
	.type	put_h264_qpel2_mc30_c, @function
put_h264_qpel2_mc30_c:
	.set	nomips16
	.frame	$sp,56,$31		# vars= 8, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-56
	sw	$31,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	16
	addiu	$16,$sp,24
	move	$19,$6
	move	$17,$5
	move	$18,$4
	move	$7,$19
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	li	$6,2			# 0x2

	addiu	$5,$17,1
	lbu	$4,1($5)
	lbu	$2,1($16)
	lbu	$3,1($17)
	lbu	$6,24($sp)
	sll	$4,$4,8
	sll	$2,$2,8
	or	$4,$4,$3
	or	$2,$2,$6
	li	$6,-16908288			# 0xfffffffffefe0000
	xor	$3,$2,$4
	ori	$6,$6,0xfefe
	and	$3,$3,$6
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sh	$2,0($18)
	addu	$5,$5,$19
	lbu	$2,3($16)
	lbu	$4,1($5)
	lbu	$3,0($5)
	lbu	$7,2($16)
	sll	$4,$4,8
	sll	$2,$2,8
	or	$4,$4,$3
	or	$2,$2,$7
	xor	$3,$2,$4
	and	$3,$3,$6
	srl	$3,$3,1
	or	$2,$2,$4
	lw	$31,52($sp)
	addu	$18,$18,$19
	subu	$2,$2,$3
	lw	$28,16($sp)
	sh	$2,0($18)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	j	$31
	addiu	$sp,$sp,56

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc30_c
	.align	2
	.ent	put_h264_qpel2_mc01_c
	.type	put_h264_qpel2_mc01_c, @function
put_h264_qpel2_mc01_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$18,$6
	subu	$5,$5,$2
	move	$19,$4
	addiu	$6,$sp,28
	addiu	$7,$sp,42
$L307:
	lbu	$2,1($5)
	lbu	$4,0($5)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($6)
	sb	$2,0($6)
	addiu	$6,$6,2
	bne	$6,$7,$L307
	addu	$5,$5,$18

	addiu	$16,$sp,32
	addiu	$17,$sp,24
	move	$4,$17
	move	$5,$16
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lbu	$8,3($16)
	lbu	$5,3($17)
	lbu	$7,1($16)
	lbu	$3,1($17)
	lbu	$2,32($sp)
	lbu	$4,24($sp)
	lbu	$6,2($16)
	lbu	$9,2($17)
	sll	$7,$7,8
	sll	$3,$3,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$7,$7,$2
	or	$3,$3,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,68($sp)
	addu	$2,$19,$18
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($19)
	lw	$28,16($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc01_c
	.align	2
	.ent	put_h264_qpel2_mc02_c
	.type	put_h264_qpel2_mc02_c, @function
put_h264_qpel2_mc02_c:
	.set	nomips16
	.frame	$sp,48,$31		# vars= 16, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-48
	sw	$31,44($sp)
	.cprestore	16
	sll	$2,$6,1
	subu	$5,$5,$2
	move	$9,$4
	addiu	$7,$sp,24
	addiu	$8,$sp,38
$L311:
	lbu	$2,1($5)
	lbu	$4,0($5)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($7)
	sb	$2,0($7)
	addiu	$7,$7,2
	bne	$7,$8,$L311
	addu	$5,$5,$6

	addiu	$5,$sp,28
	move	$4,$9
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lw	$31,44($sp)
	lw	$28,16($sp)
	j	$31
	addiu	$sp,$sp,48

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc02_c
	.align	2
	.ent	put_h264_qpel2_mc03_c
	.type	put_h264_qpel2_mc03_c, @function
put_h264_qpel2_mc03_c:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 24, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$18,56($sp)
	sw	$17,52($sp)
	sw	$16,48($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$17,$6
	subu	$5,$5,$2
	move	$18,$4
	addiu	$6,$sp,28
	addiu	$7,$sp,42
$L315:
	lbu	$2,1($5)
	lbu	$4,0($5)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($6)
	sb	$2,0($6)
	addiu	$6,$6,2
	bne	$6,$7,$L315
	addu	$5,$5,$17

	addiu	$16,$sp,24
	move	$4,$16
	addiu	$5,$sp,32
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	addiu	$2,$sp,34
	lbu	$5,3($16)
	lbu	$7,1($2)
	lbu	$3,1($16)
	lbu	$8,3($2)
	lbu	$4,34($sp)
	lbu	$6,24($sp)
	lbu	$10,2($16)
	lbu	$9,2($2)
	sll	$7,$7,8
	sll	$3,$3,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$6
	or	$7,$7,$4
	or	$8,$8,$9
	or	$5,$5,$10
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,60($sp)
	addu	$2,$18,$17
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($18)
	lw	$28,16($sp)
	lw	$18,56($sp)
	lw	$17,52($sp)
	lw	$16,48($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc03_c
	.align	2
	.ent	put_h264_qpel2_mc11_c
	.type	put_h264_qpel2_mc11_c, @function
put_h264_qpel2_mc11_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	li	$6,2			# 0x2
	move	$19,$4
	move	$7,$17
	move	$4,$18
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$5,$sp,32
	addiu	$6,$sp,46
$L319:
	lbu	$2,1($16)
	lbu	$4,0($16)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$6,$L319
	addu	$16,$16,$17

	addiu	$16,$sp,28
	move	$4,$16
	addiu	$5,$sp,36
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lbu	$8,3($18)
	lbu	$5,3($16)
	lbu	$3,1($18)
	lbu	$7,1($16)
	lbu	$2,0($18)
	lbu	$4,28($sp)
	lbu	$6,2($18)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,68($sp)
	addu	$2,$19,$17
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($19)
	lw	$28,16($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc11_c
	.align	2
	.ent	put_h264_qpel2_mc31_c
	.type	put_h264_qpel2_mc31_c, @function
put_h264_qpel2_mc31_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	li	$6,2			# 0x2
	move	$19,$4
	move	$7,$17
	move	$4,$18
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$16,$16,1
	addiu	$5,$sp,32
	addiu	$6,$sp,46
$L323:
	lbu	$2,1($16)
	lbu	$4,0($16)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$6,$L323
	addu	$16,$16,$17

	addiu	$16,$sp,28
	move	$4,$16
	addiu	$5,$sp,36
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lbu	$8,3($18)
	lbu	$5,3($16)
	lbu	$3,1($18)
	lbu	$7,1($16)
	lbu	$2,0($18)
	lbu	$4,28($sp)
	lbu	$6,2($18)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,68($sp)
	addu	$2,$19,$17
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($19)
	lw	$28,16($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc31_c
	.align	2
	.ent	put_h264_qpel2_mc13_c
	.type	put_h264_qpel2_mc13_c, @function
put_h264_qpel2_mc13_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$5,$sp,32
	addiu	$6,$sp,46
$L327:
	lbu	$2,1($16)
	lbu	$4,0($16)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$6,$L327
	addu	$16,$16,$17

	addiu	$16,$sp,28
	move	$4,$16
	addiu	$5,$sp,36
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lbu	$8,3($18)
	lbu	$5,3($16)
	lbu	$3,1($18)
	lbu	$7,1($16)
	lbu	$2,0($18)
	lbu	$4,28($sp)
	lbu	$6,2($18)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,68($sp)
	addu	$2,$19,$17
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($19)
	lw	$28,16($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc13_c
	.align	2
	.ent	put_h264_qpel2_mc33_c
	.type	put_h264_qpel2_mc33_c, @function
put_h264_qpel2_mc33_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 24, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	sw	$19,64($sp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$16,$16,1
	addiu	$5,$sp,32
	addiu	$6,$sp,46
$L331:
	lbu	$2,1($16)
	lbu	$4,0($16)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$6,$L331
	addu	$16,$16,$17

	addiu	$16,$sp,28
	move	$4,$16
	addiu	$5,$sp,36
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	lbu	$8,3($18)
	lbu	$5,3($16)
	lbu	$3,1($18)
	lbu	$7,1($16)
	lbu	$2,0($18)
	lbu	$4,28($sp)
	lbu	$6,2($18)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,68($sp)
	addu	$2,$19,$17
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($19)
	lw	$28,16($sp)
	lw	$19,64($sp)
	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc33_c
	.align	2
	.ent	put_h264_qpel2_mc22_c
	.type	put_h264_qpel2_mc22_c, @function
put_h264_qpel2_mc22_c:
	.set	nomips16
	.frame	$sp,72,$31		# vars= 32, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-72
	sw	$31,68($sp)
	.cprestore	24
	move	$2,$6
	li	$3,2			# 0x2
	move	$6,$5
	move	$7,$2
	addiu	$5,$sp,32
	sw	$3,16($sp)
	.option	pic0
	jal	put_h264_qpel2_hv_lowpass
	.option	pic2
	sw	$2,20($sp)

	lw	$31,68($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,72

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc22_c
	.align	2
	.ent	put_h264_qpel2_mc21_c
	.type	put_h264_qpel2_mc21_c, @function
put_h264_qpel2_mc21_c:
	.set	nomips16
	.frame	$sp,96,$31		# vars= 40, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	.cprestore	24
	addiu	$17,$sp,32
	move	$19,$6
	addiu	$16,$sp,36
	move	$20,$4
	move	$18,$5
	move	$4,$17
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	li	$6,2			# 0x2

	move	$6,$18
	move	$4,$16
	addiu	$5,$sp,40
	li	$2,2			# 0x2
	li	$7,2			# 0x2
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel2_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	lbu	$8,3($17)
	lbu	$5,3($16)
	lbu	$3,1($17)
	lbu	$7,1($16)
	lbu	$2,32($sp)
	lbu	$4,36($sp)
	lbu	$6,2($17)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	xor	$4,$3,$7
	xor	$6,$5,$8
	ori	$2,$2,0xfefe
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,92($sp)
	addu	$19,$20,$19
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($20)
	lw	$28,24($sp)
	sh	$5,0($19)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	j	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc21_c
	.align	2
	.ent	put_h264_qpel2_mc23_c
	.type	put_h264_qpel2_mc23_c, @function
put_h264_qpel2_mc23_c:
	.set	nomips16
	.frame	$sp,96,$31		# vars= 40, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$20,88($sp)
	sw	$19,84($sp)
	sw	$18,80($sp)
	sw	$17,76($sp)
	sw	$16,72($sp)
	.cprestore	24
	addiu	$17,$sp,32
	move	$19,$6
	addiu	$16,$sp,36
	move	$20,$4
	move	$18,$5
	move	$4,$17
	addu	$5,$5,$6
	move	$7,$19
	.option	pic0
	jal	put_h264_qpel2_h_lowpass
	.option	pic2
	li	$6,2			# 0x2

	move	$6,$18
	move	$4,$16
	addiu	$5,$sp,40
	li	$2,2			# 0x2
	li	$7,2			# 0x2
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel2_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	lbu	$8,3($17)
	lbu	$5,3($16)
	lbu	$3,1($17)
	lbu	$7,1($16)
	lbu	$2,32($sp)
	lbu	$4,36($sp)
	lbu	$6,2($17)
	lbu	$9,2($16)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	xor	$4,$3,$7
	xor	$6,$5,$8
	ori	$2,$2,0xfefe
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,92($sp)
	addu	$19,$20,$19
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($20)
	lw	$28,24($sp)
	sh	$5,0($19)
	lw	$20,88($sp)
	lw	$19,84($sp)
	lw	$18,80($sp)
	lw	$17,76($sp)
	lw	$16,72($sp)
	j	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc23_c
	.align	2
	.ent	put_h264_qpel2_mc12_c
	.type	put_h264_qpel2_mc12_c, @function
put_h264_qpel2_mc12_c:
	.set	nomips16
	.frame	$sp,112,$31		# vars= 56, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$20,104($sp)
	sw	$19,100($sp)
	sw	$18,96($sp)
	sw	$17,92($sp)
	sw	$16,88($sp)
	.cprestore	24
	sll	$2,$6,1
	move	$18,$6
	move	$19,$5
	subu	$6,$5,$2
	move	$20,$4
	addiu	$5,$sp,40
	addiu	$7,$sp,54
$L341:
	lbu	$2,1($6)
	lbu	$4,0($6)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$7,$L341
	addu	$6,$6,$18

	addiu	$16,$sp,32
	addiu	$17,$sp,36
	move	$4,$16
	addiu	$5,$sp,44
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	move	$6,$19
	move	$4,$17
	addiu	$5,$sp,56
	li	$2,2			# 0x2
	li	$7,2			# 0x2
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel2_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	lbu	$8,3($16)
	lbu	$5,3($17)
	lbu	$3,1($16)
	lbu	$7,1($17)
	lbu	$2,32($sp)
	lbu	$4,36($sp)
	lbu	$6,2($16)
	lbu	$9,2($17)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,108($sp)
	addu	$2,$20,$18
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($20)
	lw	$28,24($sp)
	lw	$20,104($sp)
	lw	$19,100($sp)
	lw	$18,96($sp)
	lw	$17,92($sp)
	lw	$16,88($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc12_c
	.align	2
	.ent	put_h264_qpel2_mc32_c
	.type	put_h264_qpel2_mc32_c, @function
put_h264_qpel2_mc32_c:
	.set	nomips16
	.frame	$sp,112,$31		# vars= 56, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$20,104($sp)
	sw	$19,100($sp)
	sw	$18,96($sp)
	sw	$17,92($sp)
	sw	$16,88($sp)
	.cprestore	24
	sll	$2,$6,1
	subu	$2,$5,$2
	move	$18,$6
	move	$19,$5
	move	$20,$4
	addiu	$6,$2,1
	addiu	$5,$sp,40
	addiu	$7,$sp,54
$L345:
	lbu	$2,1($6)
	lbu	$4,0($6)
	sll	$2,$2,8
	or	$2,$2,$4
	srl	$3,$2,8
	sb	$3,1($5)
	sb	$2,0($5)
	addiu	$5,$5,2
	bne	$5,$7,$L345
	addu	$6,$6,$18

	addiu	$16,$sp,32
	addiu	$17,$sp,36
	move	$4,$16
	addiu	$5,$sp,44
	li	$6,2			# 0x2
	.option	pic0
	jal	put_h264_qpel2_v_lowpass
	.option	pic2
	li	$7,2			# 0x2

	move	$6,$19
	move	$4,$17
	addiu	$5,$sp,56
	li	$2,2			# 0x2
	li	$7,2			# 0x2
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel2_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	lbu	$8,3($16)
	lbu	$5,3($17)
	lbu	$3,1($16)
	lbu	$7,1($17)
	lbu	$2,32($sp)
	lbu	$4,36($sp)
	lbu	$6,2($16)
	lbu	$9,2($17)
	sll	$3,$3,8
	sll	$7,$7,8
	sll	$8,$8,8
	sll	$5,$5,8
	or	$3,$3,$2
	or	$7,$7,$4
	or	$8,$8,$6
	or	$5,$5,$9
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$2,$2,0xfefe
	xor	$4,$3,$7
	xor	$6,$5,$8
	and	$6,$6,$2
	and	$4,$4,$2
	srl	$4,$4,1
	srl	$6,$6,1
	or	$3,$3,$7
	or	$5,$5,$8
	lw	$31,108($sp)
	addu	$2,$20,$18
	subu	$3,$3,$4
	subu	$5,$5,$6
	sh	$3,0($20)
	lw	$28,24($sp)
	lw	$20,104($sp)
	lw	$19,100($sp)
	lw	$18,96($sp)
	lw	$17,92($sp)
	lw	$16,88($sp)
	sh	$5,0($2)
	j	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	put_h264_qpel2_mc32_c
	.align	2
	.ent	avg_h264_qpel4_mc00_c
	.type	avg_h264_qpel4_mc00_c, @function
avg_h264_qpel4_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	li	$2,-16908288			# 0xfffffffffefe0000
	move	$7,$4
	ori	$10,$2,0xfefe
	move	$8,$0
	li	$9,4			# 0x4
$L349:
	lwl	$2,3($5)
	lw	$4,0($7)
	lwr	$2,0($5)
	addiu	$8,$8,1
	xor	$3,$2,$4
	and	$3,$3,$10
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sw	$2,0($7)
	addu	$5,$5,$6
	bne	$8,$9,$L349
	addu	$7,$7,$6

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc00_c
	.align	2
	.ent	avg_h264_qpel4_mc10_c
	.type	avg_h264_qpel4_mc10_c, @function
avg_h264_qpel4_mc10_c:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 16, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$19,56($sp)
	sw	$18,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	.cprestore	16
	move	$19,$6
	addiu	$17,$sp,24
	li	$6,4			# 0x4
	move	$7,$19
	move	$18,$4
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$16,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	ori	$6,$2,0xfefe
	addiu	$7,$sp,40
$L353:
	lwl	$3,3($16)
	lwl	$4,3($17)
	lwr	$3,0($16)
	lwr	$4,0($17)
	lw	$5,0($18)
	xor	$2,$4,$3
	and	$2,$2,$6
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$6
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,4
	sw	$4,0($18)
	addu	$16,$16,$19
	bne	$17,$7,$L353
	addu	$18,$18,$19

	lw	$31,60($sp)
	lw	$19,56($sp)
	lw	$18,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc10_c
	.align	2
	.ent	avg_h264_qpel4_mc20_c
	.type	avg_h264_qpel4_mc20_c, @function
avg_h264_qpel4_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_cropTbl)($28)
	move	$9,$4
	move	$8,$5
	move	$12,$6
	addiu	$11,$2,1024
	move	$10,$0
	li	$13,4			# 0x4
$L357:
	lbu	$6,0($8)
	lbu	$4,1($8)
	lbu	$7,3($8)
	lbu	$2,-1($8)
	lbu	$3,-2($8)
	lbu	$5,2($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,0($9)
	addu	$3,$11,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,0($9)
	lbu	$6,1($8)
	lbu	$4,2($8)
	lbu	$7,4($8)
	lbu	$2,0($8)
	lbu	$3,-1($8)
	lbu	$5,3($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,1($9)
	addu	$3,$11,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,1($9)
	lbu	$6,2($8)
	lbu	$4,3($8)
	lbu	$7,5($8)
	lbu	$2,1($8)
	lbu	$3,0($8)
	lbu	$5,4($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,2($9)
	addu	$3,$11,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,2($9)
	lbu	$4,4($8)
	lbu	$6,3($8)
	lbu	$2,2($8)
	lbu	$3,1($8)
	lbu	$7,6($8)
	lbu	$5,5($8)
	addu	$4,$4,$6
	addu	$5,$5,$2
	addu	$3,$3,$7
	sll	$2,$4,4
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	sra	$3,$3,5
	lbu	$2,3($9)
	addu	$3,$11,$3
	lbu	$4,0($3)
	addiu	$2,$2,1
	addu	$2,$2,$4
	sra	$2,$2,1
	addiu	$10,$10,1
	sb	$2,3($9)
	addu	$8,$8,$12
	bne	$10,$13,$L357
	addu	$9,$9,$12

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc20_c
	.align	2
	.ent	avg_h264_qpel4_mc30_c
	.type	avg_h264_qpel4_mc30_c, @function
avg_h264_qpel4_mc30_c:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 16, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$19,56($sp)
	sw	$18,52($sp)
	sw	$17,48($sp)
	sw	$16,44($sp)
	.cprestore	16
	move	$19,$6
	addiu	$17,$sp,24
	li	$6,4			# 0x4
	move	$7,$19
	move	$18,$4
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$16,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	addiu	$16,$16,1
	ori	$6,$2,0xfefe
	addiu	$7,$sp,40
$L361:
	lwl	$3,3($16)
	lwl	$4,3($17)
	lwr	$3,0($16)
	lwr	$4,0($17)
	lw	$5,0($18)
	xor	$2,$4,$3
	and	$2,$2,$6
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$6
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,4
	sw	$4,0($18)
	addu	$16,$16,$19
	bne	$17,$7,$L361
	addu	$18,$18,$19

	lw	$31,60($sp)
	lw	$19,56($sp)
	lw	$18,52($sp)
	lw	$17,48($sp)
	lw	$16,44($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc30_c
	.align	2
	.ent	avg_h264_qpel4_mc01_c
	.type	avg_h264_qpel4_mc01_c, @function
avg_h264_qpel4_mc01_c:
	.set	nomips16
	.frame	$sp,104,$31		# vars= 56, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-104
	sw	$31,100($sp)
	sw	$19,96($sp)
	sw	$18,92($sp)
	sw	$17,88($sp)
	sw	$16,84($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$19,$4
	move	$18,$6
	subu	$5,$5,$2
	addiu	$3,$sp,40
	addiu	$4,$sp,76
$L365:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L365
	addu	$5,$5,$18

	addiu	$16,$sp,48
	addiu	$17,$sp,24
	li	$6,4			# 0x4
	li	$7,4			# 0x4
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	move	$5,$16

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$6,$19
	ori	$7,$2,0xfefe
	addiu	$8,$sp,64
$L366:
	lwl	$3,3($16)
	lwl	$4,3($17)
	lwr	$3,0($16)
	lwr	$4,0($17)
	lw	$5,0($6)
	xor	$2,$4,$3
	and	$2,$2,$7
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$7
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,4
	sw	$4,0($6)
	addiu	$17,$17,4
	bne	$16,$8,$L366
	addu	$6,$6,$18

	lw	$31,100($sp)
	lw	$19,96($sp)
	lw	$18,92($sp)
	lw	$17,88($sp)
	lw	$16,84($sp)
	j	$31
	addiu	$sp,$sp,104

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc01_c
	.align	2
	.ent	avg_h264_qpel4_mc02_c
	.type	avg_h264_qpel4_mc02_c, @function
avg_h264_qpel4_mc02_c:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 40, regs= 3/0, args= 0, gp= 8
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-64
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,60($sp)
	sw	$17,56($sp)
	sw	$16,52($sp)
	.cprestore	0
	sll	$7,$6,1
	move	$15,$4
	subu	$5,$5,$7
	addiu	$3,$sp,8
	addiu	$4,$sp,44
$L371:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L371
	addu	$5,$5,$6

	lw	$3,%got(ff_cropTbl)($28)
	addu	$2,$7,$6
	addu	$16,$15,$2
	addiu	$17,$3,1024
	addu	$25,$15,$6
	addu	$24,$15,$7
	addiu	$14,$sp,16
	addiu	$18,$sp,20
$L372:
	lbu	$8,4($14)
	lbu	$7,0($14)
	lbu	$13,8($14)
	lbu	$12,12($14)
	lbu	$6,-4($14)
	lbu	$3,-8($14)
	addu	$4,$8,$7
	addu	$5,$13,$6
	sll	$2,$4,4
	addu	$3,$3,$12
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,16
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	lbu	$9,16($14)
	sra	$3,$3,5
	lbu	$4,0($15)
	addu	$5,$13,$8
	addu	$3,$17,$3
	lbu	$10,0($3)
	sll	$2,$5,4
	addu	$3,$12,$7
	addu	$6,$6,$9
	sll	$5,$5,2
	addu	$5,$5,$2
	addiu	$4,$4,1
	sll	$2,$3,2
	addiu	$6,$6,16
	addu	$2,$2,$3
	addu	$4,$4,$10
	addu	$6,$6,$5
	subu	$6,$6,$2
	sra	$4,$4,1
	sb	$4,0($15)
	sra	$6,$6,5
	lbu	$10,20($14)
	lbu	$3,0($25)
	addu	$6,$17,$6
	lbu	$11,0($6)
	addu	$4,$12,$13
	addu	$5,$9,$8
	sll	$2,$4,4
	addu	$7,$7,$10
	sll	$4,$4,2
	addiu	$3,$3,1
	addu	$4,$4,$2
	addiu	$7,$7,16
	sll	$2,$5,2
	addu	$3,$3,$11
	addu	$7,$7,$4
	addu	$2,$2,$5
	sra	$3,$3,1
	sb	$3,0($25)
	subu	$7,$7,$2
	sra	$7,$7,5
	lbu	$2,24($14)
	lbu	$3,0($24)
	addu	$9,$9,$12
	addu	$7,$17,$7
	lbu	$4,0($7)
	addu	$10,$10,$13
	addu	$8,$8,$2
	sll	$2,$9,4
	sll	$9,$9,2
	addu	$9,$9,$2
	addiu	$3,$3,1
	addiu	$8,$8,16
	sll	$2,$10,2
	addu	$2,$2,$10
	addu	$3,$3,$4
	addu	$8,$8,$9
	subu	$8,$8,$2
	sra	$3,$3,1
	sb	$3,0($24)
	sra	$8,$8,5
	lbu	$2,0($16)
	addu	$8,$17,$8
	lbu	$3,0($8)
	addiu	$2,$2,1
	addu	$2,$2,$3
	sra	$2,$2,1
	addiu	$14,$14,1
	sb	$2,0($16)
	addiu	$15,$15,1
	addiu	$25,$25,1
	addiu	$24,$24,1
	bne	$14,$18,$L372
	addiu	$16,$16,1

	lw	$18,60($sp)
	lw	$17,56($sp)
	lw	$16,52($sp)
	j	$31
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc02_c
	.align	2
	.ent	avg_h264_qpel4_mc03_c
	.type	avg_h264_qpel4_mc03_c, @function
avg_h264_qpel4_mc03_c:
	.set	nomips16
	.frame	$sp,96,$31		# vars= 56, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-96
	sw	$31,92($sp)
	sw	$18,88($sp)
	sw	$17,84($sp)
	sw	$16,80($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$18,$4
	move	$17,$6
	subu	$5,$5,$2
	addiu	$3,$sp,40
	addiu	$4,$sp,76
$L377:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L377
	addu	$5,$5,$17

	addiu	$16,$sp,24
	li	$6,4			# 0x4
	li	$7,4			# 0x4
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	addiu	$5,$sp,48

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$18
	ori	$8,$2,0xfefe
	addiu	$6,$sp,52
	addiu	$9,$sp,68
$L378:
	lwl	$3,3($6)
	lwl	$4,3($16)
	lwr	$3,0($6)
	lwr	$4,0($16)
	lw	$5,0($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,4
	sw	$4,0($7)
	addiu	$16,$16,4
	bne	$6,$9,$L378
	addu	$7,$7,$17

	lw	$31,92($sp)
	lw	$18,88($sp)
	lw	$17,84($sp)
	lw	$16,80($sp)
	j	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc03_c
	.align	2
	.ent	avg_h264_qpel4_mc11_c
	.type	avg_h264_qpel4_mc11_c, @function
avg_h264_qpel4_mc11_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$19,$4
	li	$6,4			# 0x4
	move	$4,$18
	move	$7,$17
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$3,$sp,56
	addiu	$4,$sp,92
$L383:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L383
	addu	$16,$16,$17

	addiu	$16,$sp,40
	li	$7,4			# 0x4
	move	$4,$16
	addiu	$5,$sp,64
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	li	$6,4			# 0x4

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L384:
	addu	$2,$18,$7
	addu	$3,$16,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L384
	addu	$8,$8,$17

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc11_c
	.align	2
	.ent	avg_h264_qpel4_mc31_c
	.type	avg_h264_qpel4_mc31_c, @function
avg_h264_qpel4_mc31_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$19,$4
	li	$6,4			# 0x4
	move	$4,$18
	move	$7,$17
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$16,$16,1
	addiu	$3,$sp,56
	addiu	$4,$sp,92
$L389:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L389
	addu	$16,$16,$17

	addiu	$16,$sp,40
	li	$7,4			# 0x4
	move	$4,$16
	addiu	$5,$sp,64
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	li	$6,4			# 0x4

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L390:
	addu	$2,$18,$7
	addu	$3,$16,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L390
	addu	$8,$8,$17

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc31_c
	.align	2
	.ent	avg_h264_qpel4_mc13_c
	.type	avg_h264_qpel4_mc13_c, @function
avg_h264_qpel4_mc13_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	li	$6,4			# 0x4
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$3,$sp,56
	addiu	$4,$sp,92
$L395:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L395
	addu	$16,$16,$17

	addiu	$16,$sp,40
	li	$7,4			# 0x4
	move	$4,$16
	addiu	$5,$sp,64
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	li	$6,4			# 0x4

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L396:
	addu	$2,$18,$7
	addu	$3,$16,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L396
	addu	$8,$8,$17

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc13_c
	.align	2
	.ent	avg_h264_qpel4_mc33_c
	.type	avg_h264_qpel4_mc33_c, @function
avg_h264_qpel4_mc33_c:
	.set	nomips16
	.frame	$sp,120,$31		# vars= 72, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-120
	sw	$31,116($sp)
	sw	$19,112($sp)
	sw	$18,108($sp)
	sw	$17,104($sp)
	sw	$16,100($sp)
	.cprestore	16
	move	$17,$6
	addiu	$18,$sp,24
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	move	$4,$18
	li	$6,4			# 0x4
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$16,$16,1
	addiu	$3,$sp,56
	addiu	$4,$sp,92
$L401:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($3)
	swr	$2,0($3)
	addiu	$3,$3,4
	bne	$3,$4,$L401
	addu	$16,$16,$17

	addiu	$16,$sp,40
	li	$7,4			# 0x4
	move	$4,$16
	addiu	$5,$sp,64
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	li	$6,4			# 0x4

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L402:
	addu	$2,$18,$7
	addu	$3,$16,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L402
	addu	$8,$8,$17

	lw	$31,116($sp)
	lw	$19,112($sp)
	lw	$18,108($sp)
	lw	$17,104($sp)
	lw	$16,100($sp)
	j	$31
	addiu	$sp,$sp,120

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc33_c
	.align	2
	.ent	avg_h264_qpel4_mc22_c
	.type	avg_h264_qpel4_mc22_c, @function
avg_h264_qpel4_mc22_c:
	.set	nomips16
	.frame	$sp,96,$31		# vars= 72, regs= 3/0, args= 0, gp= 8
	.mask	0x00070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$sp,$sp,-96
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$18,92($sp)
	sw	$17,88($sp)
	sw	$16,84($sp)
	.cprestore	0
	sll	$11,$6,1
	move	$10,$6
	move	$16,$4
	subu	$8,$5,$11
	addiu	$9,$sp,8
	addiu	$12,$sp,80
$L407:
	lbu	$2,0($8)
	lbu	$4,1($8)
	lbu	$7,-1($8)
	lbu	$5,2($8)
	lbu	$3,3($8)
	addu	$4,$4,$2
	lbu	$2,-2($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,0($9)
	lbu	$2,1($8)
	lbu	$4,2($8)
	lbu	$7,0($8)
	lbu	$5,3($8)
	lbu	$3,4($8)
	addu	$4,$4,$2
	lbu	$2,-1($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,2($9)
	lbu	$2,2($8)
	lbu	$4,3($8)
	lbu	$7,1($8)
	lbu	$5,4($8)
	lbu	$3,5($8)
	addu	$4,$4,$2
	lbu	$2,0($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$4,$4,$6
	addu	$3,$3,$2
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	sh	$3,4($9)
	lbu	$2,3($8)
	lbu	$4,4($8)
	lbu	$5,5($8)
	lbu	$7,2($8)
	addu	$4,$4,$2
	lbu	$3,6($8)
	lbu	$2,1($8)
	addu	$5,$5,$7
	sll	$6,$4,4
	sll	$4,$4,2
	addu	$3,$3,$2
	addu	$4,$4,$6
	sll	$2,$5,2
	addu	$3,$3,$4
	addu	$2,$2,$5
	subu	$3,$3,$2
	sh	$3,6($9)
	addiu	$9,$9,8
	bne	$9,$12,$L407
	addu	$8,$8,$10

	lw	$3,%got(ff_cropTbl)($28)
	addu	$2,$11,$10
	addu	$25,$16,$2
	addiu	$17,$3,1024
	addiu	$14,$sp,24
	addu	$24,$16,$10
	addu	$15,$16,$11
	addiu	$18,$sp,32
$L408:
	lh	$8,8($14)
	lh	$7,0($14)
	lh	$13,16($14)
	lh	$12,24($14)
	lh	$6,-8($14)
	lh	$3,-16($14)
	addu	$4,$8,$7
	addu	$5,$13,$6
	sll	$2,$4,4
	addu	$3,$3,$12
	sll	$4,$4,2
	addu	$4,$4,$2
	addiu	$3,$3,512
	sll	$2,$5,2
	addu	$2,$2,$5
	addu	$3,$3,$4
	subu	$3,$3,$2
	lh	$9,32($14)
	sra	$3,$3,10
	lbu	$4,0($16)
	addu	$5,$13,$8
	addu	$3,$17,$3
	lbu	$10,0($3)
	sll	$2,$5,4
	addu	$3,$12,$7
	addu	$6,$6,$9
	sll	$5,$5,2
	addu	$5,$5,$2
	addiu	$4,$4,1
	sll	$2,$3,2
	addiu	$6,$6,512
	addu	$2,$2,$3
	addu	$4,$4,$10
	addu	$6,$6,$5
	subu	$6,$6,$2
	sra	$4,$4,1
	sb	$4,0($16)
	sra	$6,$6,10
	lh	$10,40($14)
	lbu	$3,0($24)
	addu	$6,$17,$6
	lbu	$11,0($6)
	addu	$4,$12,$13
	addu	$5,$9,$8
	sll	$2,$4,4
	addu	$7,$7,$10
	sll	$4,$4,2
	addiu	$3,$3,1
	addu	$4,$4,$2
	addiu	$7,$7,512
	sll	$2,$5,2
	addu	$3,$3,$11
	addu	$7,$7,$4
	addu	$2,$2,$5
	sra	$3,$3,1
	sb	$3,0($24)
	subu	$7,$7,$2
	sra	$7,$7,10
	lh	$2,48($14)
	lbu	$3,0($15)
	addu	$9,$9,$12
	addu	$7,$17,$7
	lbu	$4,0($7)
	addu	$10,$10,$13
	addu	$8,$8,$2
	sll	$2,$9,4
	sll	$9,$9,2
	addu	$9,$9,$2
	addiu	$3,$3,1
	addiu	$8,$8,512
	sll	$2,$10,2
	addu	$2,$2,$10
	addu	$3,$3,$4
	addu	$8,$8,$9
	subu	$8,$8,$2
	sra	$3,$3,1
	sb	$3,0($15)
	sra	$8,$8,10
	lbu	$2,0($25)
	addu	$8,$17,$8
	lbu	$3,0($8)
	addiu	$2,$2,1
	addu	$2,$2,$3
	sra	$2,$2,1
	addiu	$14,$14,2
	sb	$2,0($25)
	addiu	$16,$16,1
	addiu	$24,$24,1
	addiu	$15,$15,1
	bne	$14,$18,$L408
	addiu	$25,$25,1

	lw	$18,92($sp)
	lw	$17,88($sp)
	lw	$16,84($sp)
	j	$31
	addiu	$sp,$sp,96

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc22_c
	.align	2
	.ent	avg_h264_qpel4_mc21_c
	.type	avg_h264_qpel4_mc21_c, @function
avg_h264_qpel4_mc21_c:
	.set	nomips16
	.frame	$sp,160,$31		# vars= 104, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-160
	sw	$31,156($sp)
	sw	$20,152($sp)
	sw	$19,148($sp)
	sw	$18,144($sp)
	sw	$17,140($sp)
	sw	$16,136($sp)
	.cprestore	24
	move	$18,$6
	addiu	$20,$sp,32
	move	$16,$5
	li	$6,4			# 0x4
	move	$7,$18
	move	$17,$4
	addiu	$19,$sp,48
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	move	$4,$20

	li	$2,4			# 0x4
	li	$7,4			# 0x4
	move	$6,$16
	move	$4,$19
	addiu	$5,$sp,64
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$8,$2,0xfefe
	move	$7,$0
	li	$9,16			# 0x10
$L413:
	addu	$2,$20,$7
	addu	$3,$19,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($17)
	xor	$2,$4,$5
	and	$2,$2,$8
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($17)
	bne	$7,$9,$L413
	addu	$17,$17,$18

	lw	$31,156($sp)
	lw	$20,152($sp)
	lw	$19,148($sp)
	lw	$18,144($sp)
	lw	$17,140($sp)
	lw	$16,136($sp)
	j	$31
	addiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc21_c
	.align	2
	.ent	avg_h264_qpel4_mc23_c
	.type	avg_h264_qpel4_mc23_c, @function
avg_h264_qpel4_mc23_c:
	.set	nomips16
	.frame	$sp,160,$31		# vars= 104, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-160
	sw	$31,156($sp)
	sw	$20,152($sp)
	sw	$19,148($sp)
	sw	$18,144($sp)
	sw	$17,140($sp)
	sw	$16,136($sp)
	.cprestore	24
	move	$18,$6
	addiu	$20,$sp,32
	move	$16,$5
	move	$7,$18
	addu	$5,$5,$6
	move	$17,$4
	li	$6,4			# 0x4
	move	$4,$20
	.option	pic0
	jal	put_h264_qpel4_h_lowpass
	.option	pic2
	addiu	$19,$sp,48

	li	$2,4			# 0x4
	li	$7,4			# 0x4
	move	$6,$16
	move	$4,$19
	addiu	$5,$sp,64
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$8,$2,0xfefe
	move	$7,$0
	li	$9,16			# 0x10
$L417:
	addu	$2,$20,$7
	addu	$3,$19,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($17)
	xor	$2,$4,$5
	and	$2,$2,$8
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($17)
	bne	$7,$9,$L417
	addu	$17,$17,$18

	lw	$31,156($sp)
	lw	$20,152($sp)
	lw	$19,148($sp)
	lw	$18,144($sp)
	lw	$17,140($sp)
	lw	$16,136($sp)
	j	$31
	addiu	$sp,$sp,160

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc23_c
	.align	2
	.ent	avg_h264_qpel4_mc12_c
	.type	avg_h264_qpel4_mc12_c, @function
avg_h264_qpel4_mc12_c:
	.set	nomips16
	.frame	$sp,208,$31		# vars= 144, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-208
	sw	$31,204($sp)
	sw	$21,200($sp)
	sw	$20,196($sp)
	sw	$19,192($sp)
	sw	$18,188($sp)
	sw	$17,184($sp)
	sw	$16,180($sp)
	.cprestore	24
	sll	$2,$6,1
	move	$21,$4
	move	$17,$6
	move	$20,$5
	subu	$3,$5,$2
	addiu	$16,$sp,64
	addiu	$4,$sp,100
$L421:
	lwl	$2,3($3)
	lwr	$2,0($3)
	swl	$2,3($16)
	swr	$2,0($16)
	addiu	$16,$16,4
	bne	$16,$4,$L421
	addu	$3,$3,$17

	addiu	$19,$sp,32
	move	$4,$19
	addiu	$5,$sp,72
	li	$6,4			# 0x4
	li	$7,4			# 0x4
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	addiu	$18,$sp,48

	li	$2,4			# 0x4
	li	$7,4			# 0x4
	move	$5,$16
	move	$6,$20
	move	$4,$18
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass
	.option	pic2
	sw	$17,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$8,$21
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L422:
	addu	$2,$19,$7
	addu	$3,$18,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L422
	addu	$8,$8,$17

	lw	$31,204($sp)
	lw	$21,200($sp)
	lw	$20,196($sp)
	lw	$19,192($sp)
	lw	$18,188($sp)
	lw	$17,184($sp)
	lw	$16,180($sp)
	j	$31
	addiu	$sp,$sp,208

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc12_c
	.align	2
	.ent	avg_h264_qpel4_mc32_c
	.type	avg_h264_qpel4_mc32_c, @function
avg_h264_qpel4_mc32_c:
	.set	nomips16
	.frame	$sp,208,$31		# vars= 144, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-208
	sw	$31,204($sp)
	sw	$21,200($sp)
	sw	$20,196($sp)
	sw	$19,192($sp)
	sw	$18,188($sp)
	sw	$17,184($sp)
	sw	$16,180($sp)
	.cprestore	24
	sll	$2,$6,1
	subu	$2,$5,$2
	move	$21,$4
	move	$17,$6
	move	$20,$5
	addiu	$3,$2,1
	addiu	$16,$sp,64
	addiu	$4,$sp,100
$L427:
	lwl	$2,3($3)
	lwr	$2,0($3)
	swl	$2,3($16)
	swr	$2,0($16)
	addiu	$16,$16,4
	bne	$16,$4,$L427
	addu	$3,$3,$17

	addiu	$19,$sp,32
	move	$4,$19
	addiu	$5,$sp,72
	li	$6,4			# 0x4
	li	$7,4			# 0x4
	.option	pic0
	jal	put_h264_qpel4_v_lowpass
	.option	pic2
	addiu	$18,$sp,48

	li	$2,4			# 0x4
	li	$7,4			# 0x4
	move	$5,$16
	move	$6,$20
	move	$4,$18
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel4_hv_lowpass
	.option	pic2
	sw	$17,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$8,$21
	ori	$9,$2,0xfefe
	move	$7,$0
	li	$10,16			# 0x10
$L428:
	addu	$2,$19,$7
	addu	$3,$18,$7
	lwl	$5,3($2)
	lwl	$4,3($3)
	lwr	$5,0($2)
	lwr	$4,0($3)
	lw	$6,0($8)
	xor	$2,$4,$5
	and	$2,$2,$9
	srl	$2,$2,1
	or	$4,$4,$5
	subu	$4,$4,$2
	xor	$3,$4,$6
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$6
	subu	$4,$4,$3
	addiu	$7,$7,4
	sw	$4,0($8)
	bne	$7,$10,$L428
	addu	$8,$8,$17

	lw	$31,204($sp)
	lw	$21,200($sp)
	lw	$20,196($sp)
	lw	$19,192($sp)
	lw	$18,188($sp)
	lw	$17,184($sp)
	lw	$16,180($sp)
	j	$31
	addiu	$sp,$sp,208

	.set	macro
	.set	reorder
	.end	avg_h264_qpel4_mc32_c
	.align	2
	.ent	avg_h264_qpel8_mc00_c
	.type	avg_h264_qpel8_mc00_c, @function
avg_h264_qpel8_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	li	$2,-16908288			# 0xfffffffffefe0000
	move	$8,$4
	move	$7,$5
	ori	$10,$2,0xfefe
	move	$9,$0
	li	$11,8			# 0x8
$L433:
	lwl	$2,3($7)
	lw	$4,0($8)
	lwr	$2,0($7)
	lw	$5,4($8)
	xor	$3,$2,$4
	and	$3,$3,$10
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sw	$2,0($8)
	lwl	$3,7($7)
	addiu	$9,$9,1
	lwr	$3,4($7)
	addu	$7,$7,$6
	xor	$2,$3,$5
	and	$2,$2,$10
	srl	$2,$2,1
	or	$3,$3,$5
	subu	$3,$3,$2
	sw	$3,4($8)
	bne	$9,$11,$L433
	addu	$8,$8,$6

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc00_c
	.align	2
	.ent	avg_h264_qpel8_mc20_c
	.type	avg_h264_qpel8_mc20_c, @function
avg_h264_qpel8_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	.option	pic0
	j	avg_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$6

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc20_c
	.align	2
	.ent	avg_h264_qpel8_mc02_c
	.type	avg_h264_qpel8_mc02_c, @function
avg_h264_qpel8_mc02_c:
	.set	nomips16
	.frame	$sp,136,$31		# vars= 104, regs= 1/0, args= 16, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-136
	sw	$31,132($sp)
	.cprestore	16
	sll	$2,$6,1
	subu	$5,$5,$2
	addiu	$7,$sp,24
	addiu	$8,$sp,128
$L439:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($7)
	swr	$2,0($7)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($7)
	swr	$3,4($7)
	addiu	$7,$7,8
	bne	$7,$8,$L439
	addu	$5,$5,$6

	addiu	$5,$sp,40
	.option	pic0
	jal	avg_h264_qpel8_v_lowpass
	.option	pic2
	li	$7,8			# 0x8

	lw	$31,132($sp)
	lw	$28,16($sp)
	j	$31
	addiu	$sp,$sp,136

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc02_c
	.align	2
	.ent	avg_h264_qpel8_mc22_c
	.type	avg_h264_qpel8_mc22_c, @function
avg_h264_qpel8_mc22_c:
	.set	nomips16
	.frame	$sp,248,$31		# vars= 208, regs= 1/0, args= 24, gp= 8
	.mask	0x80000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-248
	sw	$31,244($sp)
	.cprestore	24
	move	$2,$6
	li	$3,8			# 0x8
	move	$6,$5
	move	$7,$2
	addiu	$5,$sp,32
	sw	$3,16($sp)
	.option	pic0
	jal	avg_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$2,20($sp)

	lw	$31,244($sp)
	lw	$28,24($sp)
	j	$31
	addiu	$sp,$sp,248

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc22_c
	.align	2
	.ent	avg_h264_qpel16_mc00_c
	.type	avg_h264_qpel16_mc00_c, @function
avg_h264_qpel16_mc00_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	li	$2,-16908288			# 0xfffffffffefe0000
	move	$12,$4
	move	$13,$5
	ori	$10,$2,0xfefe
	move	$8,$4
	move	$7,$5
	move	$9,$0
	li	$11,16			# 0x10
$L445:
	lwl	$2,3($7)
	lw	$4,0($8)
	lwr	$2,0($7)
	lw	$5,4($8)
	xor	$3,$2,$4
	and	$3,$3,$10
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sw	$2,0($8)
	lwl	$3,7($7)
	addiu	$9,$9,1
	lwr	$3,4($7)
	addu	$7,$7,$6
	xor	$2,$3,$5
	and	$2,$2,$10
	srl	$2,$2,1
	or	$3,$3,$5
	subu	$3,$3,$2
	sw	$3,4($8)
	bne	$9,$11,$L445
	addu	$8,$8,$6

	li	$2,-16908288			# 0xfffffffffefe0000
	addiu	$8,$12,8
	addiu	$7,$13,8
	ori	$10,$2,0xfefe
	move	$9,$0
	li	$11,16			# 0x10
$L446:
	lwl	$2,3($7)
	lw	$4,0($8)
	lwr	$2,0($7)
	lw	$5,4($8)
	xor	$3,$2,$4
	and	$3,$3,$10
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	sw	$2,0($8)
	lwl	$3,7($7)
	addiu	$9,$9,1
	lwr	$3,4($7)
	addu	$7,$7,$6
	xor	$2,$3,$5
	and	$2,$2,$10
	srl	$2,$2,1
	or	$3,$3,$5
	subu	$3,$3,$2
	sw	$3,4($8)
	bne	$9,$11,$L446
	addu	$8,$8,$6

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc00_c
	.align	2
	.ent	avg_h264_qpel16_mc20_c
	.type	avg_h264_qpel16_mc20_c, @function
avg_h264_qpel16_mc20_c:
	.set	nomips16
	.frame	$sp,40,$31		# vars= 0, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-40
	sw	$31,36($sp)
	sw	$18,32($sp)
	sw	$17,28($sp)
	sw	$16,24($sp)
	.cprestore	16
	move	$16,$6
	move	$17,$4
	move	$18,$5
	.option	pic0
	jal	avg_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$6

	addiu	$4,$17,8
	addiu	$5,$18,8
	move	$6,$16
	.option	pic0
	jal	avg_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$16

	sll	$2,$16,3
	addu	$17,$17,$2
	addu	$18,$18,$2
	move	$4,$17
	move	$5,$18
	move	$6,$16
	.option	pic0
	jal	avg_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$16

	lw	$28,16($sp)
	move	$6,$16
	addiu	$4,$17,8
	addiu	$5,$18,8
	move	$7,$16
	lw	$31,36($sp)
	lw	$18,32($sp)
	lw	$17,28($sp)
	lw	$16,24($sp)
	.option	pic0
	j	avg_h264_qpel8_h_lowpass
	.option	pic2
	addiu	$sp,$sp,40

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc20_c
	.align	2
	.ent	avg_h264_qpel16_mc02_c
	.type	avg_h264_qpel16_mc02_c, @function
avg_h264_qpel16_mc02_c:
	.set	nomips16
	.frame	$sp,376,$31		# vars= 336, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-376
	sw	$31,372($sp)
	sw	$18,368($sp)
	sw	$17,364($sp)
	sw	$16,360($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$17,$6
	move	$18,$4
	subu	$5,$5,$2
	addiu	$4,$sp,24
	addiu	$6,$sp,360
$L453:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($5)
	lwr	$2,8($5)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($5)
	lwr	$3,12($5)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$6,$L453
	addu	$5,$5,$17

	move	$4,$18
	addiu	$5,$sp,56
	move	$6,$17
	li	$7,16			# 0x10
	.option	pic0
	jal	avg_h264_qpel8_v_lowpass
	.option	pic2
	sll	$16,$17,3

	addu	$16,$18,$16
	addiu	$4,$18,8
	addiu	$5,$sp,64
	move	$6,$17
	.option	pic0
	jal	avg_h264_qpel8_v_lowpass
	.option	pic2
	li	$7,16			# 0x10

	move	$4,$16
	addiu	$5,$sp,184
	move	$6,$17
	.option	pic0
	jal	avg_h264_qpel8_v_lowpass
	.option	pic2
	li	$7,16			# 0x10

	addiu	$4,$16,8
	move	$6,$17
	addiu	$5,$sp,192
	.option	pic0
	jal	avg_h264_qpel8_v_lowpass
	.option	pic2
	li	$7,16			# 0x10

	lw	$31,372($sp)
	lw	$28,16($sp)
	lw	$18,368($sp)
	lw	$17,364($sp)
	lw	$16,360($sp)
	j	$31
	addiu	$sp,$sp,376

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc02_c
	.align	2
	.ent	avg_h264_qpel16_mc22_c
	.type	avg_h264_qpel16_mc22_c, @function
avg_h264_qpel16_mc22_c:
	.set	nomips16
	.frame	$sp,736,$31		# vars= 672, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-736
	sw	$31,732($sp)
	sw	$21,728($sp)
	sw	$20,724($sp)
	sw	$19,720($sp)
	sw	$18,716($sp)
	sw	$17,712($sp)
	sw	$16,708($sp)
	.cprestore	24
	move	$16,$6
	move	$18,$5
	addiu	$20,$sp,32
	li	$19,16			# 0x10
	addiu	$21,$sp,48
	move	$17,$4
	move	$5,$20
	move	$6,$18
	move	$7,$16
	sw	$19,16($sp)
	.option	pic0
	jal	avg_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$16,20($sp)

	addiu	$4,$17,8
	move	$5,$21
	addiu	$6,$18,8
	move	$7,$16
	sw	$19,16($sp)
	.option	pic0
	jal	avg_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$16,20($sp)

	sll	$2,$16,3
	addu	$17,$17,$2
	addu	$18,$18,$2
	move	$5,$20
	move	$4,$17
	move	$6,$18
	move	$7,$16
	sw	$19,16($sp)
	.option	pic0
	jal	avg_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$16,20($sp)

	addiu	$4,$17,8
	move	$5,$21
	addiu	$6,$18,8
	move	$7,$16
	sw	$19,16($sp)
	.option	pic0
	jal	avg_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$16,20($sp)

	lw	$31,732($sp)
	lw	$28,24($sp)
	lw	$21,728($sp)
	lw	$20,724($sp)
	lw	$19,720($sp)
	lw	$18,716($sp)
	lw	$17,712($sp)
	lw	$16,708($sp)
	j	$31
	addiu	$sp,$sp,736

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc22_c
	.align	2
	.ent	put_h264_chroma_mc4_mxu
	.type	put_h264_chroma_mc4_mxu, @function
put_h264_chroma_mc4_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$9,16($sp)
	lw	$3,20($sp)
	li	$2,8			# 0x8
	subu	$10,$2,$3
	mul	$8,$3,$9
	subu	$2,$2,$9
	mul	$3,$3,$2
	mul	$2,$10,$2
	mul	$10,$10,$9
	sll	$8,$8,8
	or	$8,$8,$3
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$5,$3
	sll	$2,$2,16
	subu	$9,$3,$6
	or	$8,$8,$2
	andi	$5,$5,0x3
	sll	$10,$10,24
	li	$2,4			# 0x4
	subu	$11,$2,$5
	or	$8,$8,$10
	subu	$4,$4,$6
	addiu	$10,$9,4
	addiu	$5,$9,8
#APP
 # 3041 "h264dsputil.c" 1
	S32I2M xr15,$8
 # 0 "" 2
#NO_APP
	li	$2,32			# 0x20
#APP
 # 3042 "h264dsputil.c" 1
	S32I2M xr14,$2
 # 0 "" 2
 # 3045 "h264dsputil.c" 1
	S32LDIV xr1,$9,$6,0
 # 0 "" 2
 # 3046 "h264dsputil.c" 1
	S32LDIV xr2,$10,$6,0
 # 0 "" 2
 # 3047 "h264dsputil.c" 1
	S32LDIV xr3,$5,$6,0
 # 0 "" 2
 # 3049 "h264dsputil.c" 1
	S32LDIV xr7,$9,$6,0
 # 0 "" 2
 # 3050 "h264dsputil.c" 1
	S32LDIV xr8,$10,$6,0
 # 0 "" 2
 # 3051 "h264dsputil.c" 1
	S32LDIV xr9,$5,$6,0
 # 0 "" 2
 # 3053 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 3054 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 3056 "h264dsputil.c" 1
	S32ALN xr13,xr8,xr7,$11
 # 0 "" 2
 # 3057 "h264dsputil.c" 1
	S32ALN xr12,xr9,xr8,$11
 # 0 "" 2
 # 3059 "h264dsputil.c" 1
	S32SFL xr7,xr4,xr13,xr6,ptn3
 # 0 "" 2
#NO_APP
	li	$2,3			# 0x3
#APP
 # 3061 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr4,$2
 # 0 "" 2
#NO_APP
	li	$3,3			# 0x3
#APP
 # 3062 "h264dsputil.c" 1
	S32ALN xr12,xr12,xr13,$3
 # 0 "" 2
 # 3065 "h264dsputil.c" 1
	Q8MUL xr9,xr6,xr15,xr8
 # 0 "" 2
 # 3066 "h264dsputil.c" 1
	S32SFL xr6,xr5,xr12,xr3,ptn3
 # 0 "" 2
 # 3069 "h264dsputil.c" 1
	Q8MUL xr7,xr7,xr15,xr10
 # 0 "" 2
 # 3071 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr9,xr8,AA
 # 0 "" 2
 # 3072 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr11,AA,XW
 # 0 "" 2
 # 3074 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr7,xr10,AA
 # 0 "" 2
 # 3075 "h264dsputil.c" 1
	Q16ADD xr0,xr10,xr10,xr9,AA,XW
 # 0 "" 2
 # 3078 "h264dsputil.c" 1
	Q8MUL xr3,xr3,xr15,xr8
 # 0 "" 2
 # 3081 "h264dsputil.c" 1
	Q8MUL xr6,xr6,xr15,xr7
 # 0 "" 2
 # 3083 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr3,xr8,AA
 # 0 "" 2
 # 3084 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr10,AA,XW
 # 0 "" 2
 # 3086 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr6,xr7,AA
 # 0 "" 2
 # 3087 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr8,AA,XW
 # 0 "" 2
 # 3089 "h264dsputil.c" 1
	Q16SLR xr11,xr11,xr10,xr10,6
 # 0 "" 2
 # 3090 "h264dsputil.c" 1
	Q16SLR xr9,xr9,xr8,xr8,6
 # 0 "" 2
 # 3092 "h264dsputil.c" 1
	S32SFL xr0,xr10,xr11,xr10,ptn3
 # 0 "" 2
 # 3093 "h264dsputil.c" 1
	S32SFL xr0,xr8,xr9,xr11,ptn3
 # 0 "" 2
 # 3095 "h264dsputil.c" 1
	Q16SAT xr11,xr11,xr10
 # 0 "" 2
 # 3096 "h264dsputil.c" 1
	S32SDIV xr11,$4,$6,0
 # 0 "" 2
#NO_APP
	slt	$2,$7,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L463
	li	$3,1			# 0x1
	.set	macro
	.set	reorder

	li	$12,3			# 0x3
	move	$8,$0
$L460:
#APP
 # 3099 "h264dsputil.c" 1
	S32LDIV xr1,$9,$6,0
 # 0 "" 2
 # 3100 "h264dsputil.c" 1
	S32LDIV xr2,$10,$6,0
 # 0 "" 2
 # 3101 "h264dsputil.c" 1
	S32LDIV xr3,$5,$6,0
 # 0 "" 2
#NO_APP
	addu	$2,$9,$6
#APP
 # 3102 "h264dsputil.c" 1
	pref 0,0($2)
 # 0 "" 2
 # 3103 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 3104 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 3105 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr4,$12
 # 0 "" 2
 # 3107 "h264dsputil.c" 1
	S32SFL xr7,xr13,xr4,xr6,ptn3
 # 0 "" 2
 # 3110 "h264dsputil.c" 1
	Q8MUL xr9,xr6,xr15,xr8
 # 0 "" 2
 # 3111 "h264dsputil.c" 1
	S32SFL xr6,xr12,xr5,xr3,ptn3
 # 0 "" 2
 # 3112 "h264dsputil.c" 1
	S32ALN xr13,xr4,xr0,$8
 # 0 "" 2
 # 3113 "h264dsputil.c" 1
	S32ALN xr12,xr5,xr0,$8
 # 0 "" 2
 # 3116 "h264dsputil.c" 1
	Q8MUL xr7,xr7,xr15,xr10
 # 0 "" 2
 # 3118 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr9,xr8,AA
 # 0 "" 2
 # 3119 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr11,AA,XW
 # 0 "" 2
 # 3122 "h264dsputil.c" 1
	Q8MUL xr3,xr3,xr15,xr8
 # 0 "" 2
 # 3124 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr7,xr10,AA
 # 0 "" 2
 # 3125 "h264dsputil.c" 1
	Q16ADD xr0,xr10,xr10,xr9,AA,XW
 # 0 "" 2
 # 3128 "h264dsputil.c" 1
	Q8MUL xr6,xr6,xr15,xr7
 # 0 "" 2
 # 3130 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr3,xr8,AA
 # 0 "" 2
 # 3131 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr10,AA,XW
 # 0 "" 2
 # 3133 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr6,xr7,AA
 # 0 "" 2
 # 3134 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr8,AA,XW
 # 0 "" 2
 # 3136 "h264dsputil.c" 1
	Q16SLR xr11,xr11,xr10,xr10,6
 # 0 "" 2
 # 3137 "h264dsputil.c" 1
	Q16SLR xr9,xr9,xr8,xr8,6
 # 0 "" 2
 # 3139 "h264dsputil.c" 1
	S32SFL xr0,xr10,xr11,xr10,ptn3
 # 0 "" 2
 # 3140 "h264dsputil.c" 1
	S32SFL xr0,xr8,xr9,xr11,ptn3
 # 0 "" 2
 # 3142 "h264dsputil.c" 1
	Q16SAT xr11,xr11,xr10
 # 0 "" 2
 # 3143 "h264dsputil.c" 1
	S32SDIV xr11,$4,$6,0
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	bne	$3,$7,$L460
$L463:
	j	$31
	.end	put_h264_chroma_mc4_mxu
	.align	2
	.ent	put_h264_chroma_mc8_mxu
	.type	put_h264_chroma_mc8_mxu, @function
put_h264_chroma_mc8_mxu:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	24
	lw	$20,80($sp)
	lw	$21,84($sp)
	move	$16,$4
	move	$17,$5
	move	$18,$6
	move	$19,$7
	sw	$20,16($sp)
	.option	pic0
	jal	put_h264_chroma_mc4_mxu
	.option	pic2
	sw	$21,20($sp)

	lw	$28,24($sp)
	sw	$20,80($sp)
	sw	$21,84($sp)
	addiu	$4,$16,4
	addiu	$5,$17,4
	move	$6,$18
	move	$7,$19
	lw	$31,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	.option	pic0
	j	put_h264_chroma_mc4_mxu
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_h264_chroma_mc8_mxu
	.align	2
	.ent	put_h264_chroma_mc2_c
	.type	put_h264_chroma_mc2_c, @function
put_h264_chroma_mc2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$3,16($sp)
	lw	$8,20($sp)
	li	$2,8			# 0x8
	subu	$9,$2,$8
	subu	$2,$2,$3
	mul	$24,$8,$3
	mul	$15,$9,$3
	move	$12,$4
	move	$14,$6
	mul	$8,$8,$2
	blez	$7,$L471
	mul	$9,$9,$2

	addu	$11,$5,$6
	move	$10,$11
	move	$13,$0
	subu	$25,$0,$6
$L468:
	lbu	$3,0($10)
	lbu	$2,1($10)
	mult	$8,$3
	lbu	$4,0($5)
	madd	$24,$2
	lbu	$3,1($5)
	mflo	$2
	addu	$6,$11,$25
	addiu	$2,$2,32
	mtlo	$2
	madd	$9,$4
	addiu	$13,$13,1
	madd	$15,$3
	mflo	$3
	sra	$3,$3,6
	sb	$3,0($12)
	lbu	$4,1($10)
	lbu	$2,2($10)
	mult	$8,$4
	lbu	$5,1($6)
	madd	$24,$2
	lbu	$3,2($6)
	mflo	$2
	slt	$4,$13,$7
	addiu	$2,$2,32
	mtlo	$2
	madd	$9,$5
	addu	$10,$10,$14
	madd	$15,$3
	move	$5,$11
	mflo	$3
	addu	$11,$11,$14
	sra	$3,$3,6
	sb	$3,1($12)
	bne	$4,$0,$L468
	addu	$12,$12,$14

$L471:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	put_h264_chroma_mc2_c
	.align	2
	.ent	avg_h264_chroma_mc2_c
	.type	avg_h264_chroma_mc2_c, @function
avg_h264_chroma_mc2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$3,16($sp)
	lw	$8,20($sp)
	li	$2,8			# 0x8
	subu	$9,$2,$8
	subu	$2,$2,$3
	mul	$15,$8,$3
	move	$11,$4
	mul	$14,$9,$3
	move	$4,$5
	mul	$8,$8,$2
	blez	$7,$L477
	mul	$9,$9,$2

	addu	$12,$5,$6
	move	$10,$12
	move	$13,$0
	subu	$24,$0,$6
$L474:
	lbu	$2,0($10)
	lbu	$3,1($10)
	mult	$8,$2
	lbu	$5,0($4)
	madd	$15,$3
	lbu	$4,1($4)
	mflo	$3
	lbu	$2,0($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$14,$4
	addu	$5,$12,$24
	mflo	$4
	addiu	$13,$13,1
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,0($11)
	lbu	$3,1($10)
	lbu	$2,2($10)
	mult	$8,$3
	lbu	$4,1($5)
	madd	$15,$2
	lbu	$3,2($5)
	mflo	$2
	addu	$10,$10,$6
	addiu	$2,$2,32
	mtlo	$2
	madd	$9,$4
	lbu	$2,1($11)
	madd	$14,$3
	addiu	$2,$2,1
	mflo	$3
	move	$4,$12
	sra	$3,$3,6
	addu	$2,$2,$3
	sra	$2,$2,1
	slt	$3,$13,$7
	sb	$2,1($11)
	addu	$12,$12,$6
	bne	$3,$0,$L474
	addu	$11,$11,$6

$L477:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_chroma_mc2_c
	.align	2
	.ent	avg_h264_chroma_mc4_c
	.type	avg_h264_chroma_mc4_c, @function
avg_h264_chroma_mc4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$3,16($sp)
	lw	$8,20($sp)
	li	$2,8			# 0x8
	subu	$9,$2,$8
	subu	$2,$2,$3
	mul	$14,$8,$3
	move	$11,$4
	mul	$13,$9,$3
	move	$4,$5
	move	$24,$6
	mul	$8,$8,$2
	blez	$7,$L483
	mul	$9,$9,$2

	addu	$12,$5,$6
	move	$10,$12
	move	$15,$0
	subu	$25,$0,$6
$L480:
	lbu	$2,0($10)
	lbu	$3,1($10)
	mult	$8,$2
	lbu	$5,0($4)
	madd	$14,$3
	lbu	$4,1($4)
	mflo	$3
	lbu	$2,0($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$13,$4
	addu	$6,$12,$25
	mflo	$4
	addiu	$15,$15,1
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,0($11)
	lbu	$3,1($10)
	lbu	$2,2($10)
	mult	$8,$3
	lbu	$4,1($6)
	madd	$14,$2
	lbu	$3,2($6)
	mflo	$2
	addiu	$2,$2,32
	mtlo	$2
	madd	$9,$4
	lbu	$2,1($11)
	madd	$13,$3
	addiu	$2,$2,1
	mflo	$3
	sra	$3,$3,6
	addu	$2,$2,$3
	sra	$2,$2,1
	sb	$2,1($11)
	lbu	$4,2($10)
	lbu	$3,3($10)
	mult	$8,$4
	lbu	$5,2($6)
	madd	$14,$3
	lbu	$4,3($6)
	mflo	$3
	lbu	$2,2($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$13,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,2($11)
	lbu	$4,3($10)
	lbu	$3,4($10)
	mult	$8,$4
	lbu	$5,3($6)
	madd	$14,$3
	lbu	$4,4($6)
	mflo	$3
	lbu	$2,3($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$13,$4
	slt	$3,$15,$7
	mflo	$4
	addu	$10,$10,$24
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,3($11)
	move	$4,$12
	addu	$11,$11,$24
	bne	$3,$0,$L480
	addu	$12,$12,$24

$L483:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_chroma_mc4_c
	.align	2
	.ent	avg_h264_chroma_mc8_c
	.type	avg_h264_chroma_mc8_c, @function
avg_h264_chroma_mc8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$3,16($sp)
	lw	$8,20($sp)
	li	$2,8			# 0x8
	subu	$9,$2,$8
	subu	$2,$2,$3
	mul	$13,$8,$3
	move	$11,$4
	mul	$12,$9,$3
	move	$4,$5
	move	$24,$6
	mul	$8,$8,$2
	blez	$7,$L490
	mul	$9,$9,$2

	addu	$14,$5,$6
	move	$10,$14
	move	$15,$0
	b	$L486
	subu	$25,$0,$6

$L489:
	addu	$14,$14,$24
$L486:
	lbu	$2,0($10)
	lbu	$3,1($10)
	mult	$8,$2
	lbu	$5,0($4)
	madd	$13,$3
	lbu	$4,1($4)
	mflo	$3
	lbu	$2,0($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	addu	$6,$14,$25
	mflo	$4
	addiu	$15,$15,1
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,0($11)
	lbu	$3,1($10)
	lbu	$2,2($10)
	mult	$8,$3
	lbu	$4,1($6)
	madd	$13,$2
	lbu	$3,2($6)
	mflo	$2
	addiu	$2,$2,32
	mtlo	$2
	madd	$9,$4
	lbu	$2,1($11)
	madd	$12,$3
	addiu	$2,$2,1
	mflo	$3
	sra	$3,$3,6
	addu	$2,$2,$3
	sra	$2,$2,1
	sb	$2,1($11)
	lbu	$4,2($10)
	lbu	$3,3($10)
	mult	$8,$4
	lbu	$5,2($6)
	madd	$13,$3
	lbu	$4,3($6)
	mflo	$3
	lbu	$2,2($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,2($11)
	lbu	$4,3($10)
	lbu	$3,4($10)
	mult	$8,$4
	lbu	$5,3($6)
	madd	$13,$3
	lbu	$4,4($6)
	mflo	$3
	lbu	$2,3($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,3($11)
	lbu	$4,4($10)
	lbu	$3,5($10)
	mult	$8,$4
	lbu	$5,4($6)
	madd	$13,$3
	lbu	$4,5($6)
	mflo	$3
	lbu	$2,4($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,4($11)
	lbu	$4,5($10)
	lbu	$3,6($10)
	mult	$8,$4
	lbu	$5,5($6)
	madd	$13,$3
	lbu	$4,6($6)
	mflo	$3
	lbu	$2,5($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,5($11)
	lbu	$4,6($10)
	lbu	$3,7($10)
	mult	$8,$4
	lbu	$5,6($6)
	madd	$13,$3
	lbu	$4,7($6)
	mflo	$3
	lbu	$2,6($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	mflo	$4
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,6($11)
	lbu	$4,7($10)
	lbu	$3,8($10)
	mult	$8,$4
	lbu	$5,7($6)
	madd	$13,$3
	lbu	$4,8($6)
	mflo	$3
	lbu	$2,7($11)
	addiu	$3,$3,32
	mtlo	$3
	madd	$9,$5
	addiu	$2,$2,1
	madd	$12,$4
	slt	$3,$15,$7
	mflo	$4
	addu	$10,$10,$24
	sra	$4,$4,6
	addu	$2,$2,$4
	sra	$2,$2,1
	sb	$2,7($11)
	move	$4,$14
	bne	$3,$0,$L489
	addu	$11,$11,$24

$L490:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	avg_h264_chroma_mc8_c
	.align	2
	.ent	put_no_rnd_h264_chroma_mc4_mxu
	.type	put_no_rnd_h264_chroma_mc4_mxu, @function
put_no_rnd_h264_chroma_mc4_mxu:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	lw	$9,16($sp)
	lw	$3,20($sp)
	li	$2,8			# 0x8
	subu	$10,$2,$3
	mul	$8,$3,$9
	subu	$2,$2,$9
	mul	$3,$3,$2
	mul	$2,$10,$2
	mul	$10,$10,$9
	sll	$8,$8,8
	or	$8,$8,$3
	li	$3,-4			# 0xfffffffffffffffc
	and	$3,$5,$3
	sll	$2,$2,16
	subu	$9,$3,$6
	or	$8,$8,$2
	andi	$5,$5,0x3
	sll	$10,$10,24
	li	$2,4			# 0x4
	subu	$11,$2,$5
	or	$8,$8,$10
	subu	$4,$4,$6
	addiu	$10,$9,4
	addiu	$5,$9,8
#APP
 # 3173 "h264dsputil.c" 1
	S32I2M xr15,$8
 # 0 "" 2
#NO_APP
	li	$2,28			# 0x1c
#APP
 # 3174 "h264dsputil.c" 1
	S32I2M xr14,$2
 # 0 "" 2
 # 3177 "h264dsputil.c" 1
	S32LDIV xr1,$9,$6,0
 # 0 "" 2
 # 3178 "h264dsputil.c" 1
	S32LDIV xr2,$10,$6,0
 # 0 "" 2
 # 3179 "h264dsputil.c" 1
	S32LDIV xr3,$5,$6,0
 # 0 "" 2
 # 3181 "h264dsputil.c" 1
	S32LDIV xr7,$9,$6,0
 # 0 "" 2
 # 3182 "h264dsputil.c" 1
	S32LDIV xr8,$10,$6,0
 # 0 "" 2
 # 3183 "h264dsputil.c" 1
	S32LDIV xr9,$5,$6,0
 # 0 "" 2
 # 3185 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 3186 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 3188 "h264dsputil.c" 1
	S32ALN xr13,xr8,xr7,$11
 # 0 "" 2
 # 3189 "h264dsputil.c" 1
	S32ALN xr12,xr9,xr8,$11
 # 0 "" 2
 # 3191 "h264dsputil.c" 1
	S32SFL xr7,xr4,xr13,xr6,ptn3
 # 0 "" 2
#NO_APP
	li	$2,3			# 0x3
#APP
 # 3193 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr4,$2
 # 0 "" 2
#NO_APP
	li	$3,3			# 0x3
#APP
 # 3194 "h264dsputil.c" 1
	S32ALN xr12,xr12,xr13,$3
 # 0 "" 2
 # 3197 "h264dsputil.c" 1
	Q8MUL xr9,xr6,xr15,xr8
 # 0 "" 2
 # 3198 "h264dsputil.c" 1
	S32SFL xr6,xr5,xr12,xr3,ptn3
 # 0 "" 2
 # 3201 "h264dsputil.c" 1
	Q8MUL xr7,xr7,xr15,xr10
 # 0 "" 2
 # 3203 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr9,xr8,AA
 # 0 "" 2
 # 3204 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr11,AA,XW
 # 0 "" 2
 # 3206 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr7,xr10,AA
 # 0 "" 2
 # 3207 "h264dsputil.c" 1
	Q16ADD xr0,xr10,xr10,xr9,AA,XW
 # 0 "" 2
 # 3210 "h264dsputil.c" 1
	Q8MUL xr3,xr3,xr15,xr8
 # 0 "" 2
 # 3213 "h264dsputil.c" 1
	Q8MUL xr6,xr6,xr15,xr7
 # 0 "" 2
 # 3215 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr3,xr8,AA
 # 0 "" 2
 # 3216 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr10,AA,XW
 # 0 "" 2
 # 3218 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr6,xr7,AA
 # 0 "" 2
 # 3219 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr8,AA,XW
 # 0 "" 2
 # 3221 "h264dsputil.c" 1
	Q16SLR xr11,xr11,xr10,xr10,6
 # 0 "" 2
 # 3222 "h264dsputil.c" 1
	Q16SLR xr9,xr9,xr8,xr8,6
 # 0 "" 2
 # 3224 "h264dsputil.c" 1
	S32SFL xr0,xr10,xr11,xr10,ptn3
 # 0 "" 2
 # 3225 "h264dsputil.c" 1
	S32SFL xr0,xr8,xr9,xr11,ptn3
 # 0 "" 2
 # 3227 "h264dsputil.c" 1
	Q16SAT xr11,xr11,xr10
 # 0 "" 2
 # 3228 "h264dsputil.c" 1
	S32SDIV xr11,$4,$6,0
 # 0 "" 2
#NO_APP
	slt	$2,$7,2
	.set	noreorder
	.set	nomacro
	bne	$2,$0,$L496
	li	$3,1			# 0x1
	.set	macro
	.set	reorder

	li	$12,3			# 0x3
	move	$8,$0
$L493:
#APP
 # 3231 "h264dsputil.c" 1
	S32LDIV xr1,$9,$6,0
 # 0 "" 2
 # 3232 "h264dsputil.c" 1
	S32LDIV xr2,$10,$6,0
 # 0 "" 2
 # 3233 "h264dsputil.c" 1
	S32LDIV xr3,$5,$6,0
 # 0 "" 2
#NO_APP
	addu	$2,$9,$6
#APP
 # 3234 "h264dsputil.c" 1
	pref 0,0($2)
 # 0 "" 2
 # 3235 "h264dsputil.c" 1
	S32ALN xr4,xr2,xr1,$11
 # 0 "" 2
 # 3236 "h264dsputil.c" 1
	S32ALN xr5,xr3,xr2,$11
 # 0 "" 2
 # 3237 "h264dsputil.c" 1
	S32ALN xr5,xr5,xr4,$12
 # 0 "" 2
 # 3239 "h264dsputil.c" 1
	S32SFL xr7,xr13,xr4,xr6,ptn3
 # 0 "" 2
 # 3242 "h264dsputil.c" 1
	Q8MUL xr9,xr6,xr15,xr8
 # 0 "" 2
 # 3243 "h264dsputil.c" 1
	S32SFL xr6,xr12,xr5,xr3,ptn3
 # 0 "" 2
 # 3244 "h264dsputil.c" 1
	S32ALN xr13,xr4,xr0,$8
 # 0 "" 2
 # 3245 "h264dsputil.c" 1
	S32ALN xr12,xr5,xr0,$8
 # 0 "" 2
 # 3248 "h264dsputil.c" 1
	Q8MUL xr7,xr7,xr15,xr10
 # 0 "" 2
 # 3250 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr9,xr8,AA
 # 0 "" 2
 # 3251 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr11,AA,XW
 # 0 "" 2
 # 3254 "h264dsputil.c" 1
	Q8MUL xr3,xr3,xr15,xr8
 # 0 "" 2
 # 3256 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr7,xr10,AA
 # 0 "" 2
 # 3257 "h264dsputil.c" 1
	Q16ADD xr0,xr10,xr10,xr9,AA,XW
 # 0 "" 2
 # 3260 "h264dsputil.c" 1
	Q8MUL xr6,xr6,xr15,xr7
 # 0 "" 2
 # 3262 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr3,xr8,AA
 # 0 "" 2
 # 3263 "h264dsputil.c" 1
	Q16ADD xr0,xr8,xr8,xr10,AA,XW
 # 0 "" 2
 # 3265 "h264dsputil.c" 1
	Q16ACC xr0,xr14,xr6,xr7,AA
 # 0 "" 2
 # 3266 "h264dsputil.c" 1
	Q16ADD xr0,xr7,xr7,xr8,AA,XW
 # 0 "" 2
 # 3268 "h264dsputil.c" 1
	Q16SLR xr11,xr11,xr10,xr10,6
 # 0 "" 2
 # 3269 "h264dsputil.c" 1
	Q16SLR xr9,xr9,xr8,xr8,6
 # 0 "" 2
 # 3271 "h264dsputil.c" 1
	S32SFL xr0,xr10,xr11,xr10,ptn3
 # 0 "" 2
 # 3272 "h264dsputil.c" 1
	S32SFL xr0,xr8,xr9,xr11,ptn3
 # 0 "" 2
 # 3274 "h264dsputil.c" 1
	Q16SAT xr11,xr11,xr10
 # 0 "" 2
 # 3275 "h264dsputil.c" 1
	S32SDIV xr11,$4,$6,0
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	bne	$3,$7,$L493
$L496:
	j	$31
	.end	put_no_rnd_h264_chroma_mc4_mxu
	.align	2
	.ent	put_no_rnd_h264_chroma_mc8_mxu
	.type	put_no_rnd_h264_chroma_mc8_mxu, @function
put_no_rnd_h264_chroma_mc8_mxu:
	.set	nomips16
	.frame	$sp,64,$31		# vars= 0, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-64
	sw	$31,60($sp)
	sw	$21,56($sp)
	sw	$20,52($sp)
	sw	$19,48($sp)
	sw	$18,44($sp)
	sw	$17,40($sp)
	sw	$16,36($sp)
	.cprestore	24
	lw	$20,80($sp)
	lw	$21,84($sp)
	move	$16,$4
	move	$17,$5
	move	$18,$6
	move	$19,$7
	sw	$20,16($sp)
	.option	pic0
	jal	put_no_rnd_h264_chroma_mc4_mxu
	.option	pic2
	sw	$21,20($sp)

	lw	$28,24($sp)
	sw	$20,80($sp)
	sw	$21,84($sp)
	addiu	$4,$16,4
	addiu	$5,$17,4
	move	$6,$18
	move	$7,$19
	lw	$31,60($sp)
	lw	$21,56($sp)
	lw	$20,52($sp)
	lw	$19,48($sp)
	lw	$18,44($sp)
	lw	$17,40($sp)
	lw	$16,36($sp)
	.option	pic0
	j	put_no_rnd_h264_chroma_mc4_mxu
	.option	pic2
	addiu	$sp,$sp,64

	.set	macro
	.set	reorder
	.end	put_no_rnd_h264_chroma_mc8_mxu
	.align	2
	.ent	weight_h264_pixels16x16_c
	.type	weight_h264_pixels16x16_c, @function
weight_h264_pixels16x16_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L500
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L500:
	move	$9,$0
	li	$8,-256			# 0xffffffffffffff00
	b	$L534
	li	$10,16			# 0x10

$L536:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L553
	andi	$3,$2,0x00ff

$L537:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L554
	andi	$3,$2,0x00ff

$L538:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L555
	andi	$3,$2,0x00ff

$L539:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L556
	andi	$3,$2,0x00ff

$L540:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L557
	andi	$3,$2,0x00ff

$L541:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L558
	andi	$3,$2,0x00ff

$L542:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L559
	andi	$3,$2,0x00ff

$L543:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,8($4)
	sb	$3,7($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L560
	andi	$3,$2,0x00ff

$L544:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,9($4)
	sb	$3,8($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L561
	andi	$3,$2,0x00ff

$L545:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,10($4)
	sb	$3,9($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L562
	andi	$3,$2,0x00ff

$L546:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,11($4)
	sb	$3,10($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L563
	andi	$3,$2,0x00ff

$L547:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,12($4)
	sb	$3,11($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L564
	andi	$3,$2,0x00ff

$L548:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,13($4)
	sb	$3,12($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L565
	andi	$3,$2,0x00ff

$L549:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,14($4)
	sb	$3,13($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L566
	andi	$3,$2,0x00ff

$L550:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,15($4)
	sb	$3,14($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L531
	nop

$L551:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$10,$L567
	sb	$2,15($4)

$L552:
	addu	$4,$4,$5
$L534:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L536
	andi	$3,$2,0x00ff

	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L537
	andi	$3,$2,0x00ff

$L553:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L538
	andi	$3,$2,0x00ff

$L554:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L539
	andi	$3,$2,0x00ff

$L555:
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L540
	andi	$3,$2,0x00ff

$L556:
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L541
	andi	$3,$2,0x00ff

$L557:
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L542
	andi	$3,$2,0x00ff

$L558:
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L543
	andi	$3,$2,0x00ff

$L559:
	lbu	$2,8($4)
	sb	$3,7($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L544
	andi	$3,$2,0x00ff

$L560:
	lbu	$2,9($4)
	sb	$3,8($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L545
	andi	$3,$2,0x00ff

$L561:
	lbu	$2,10($4)
	sb	$3,9($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L546
	andi	$3,$2,0x00ff

$L562:
	lbu	$2,11($4)
	sb	$3,10($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L547
	andi	$3,$2,0x00ff

$L563:
	lbu	$2,12($4)
	sb	$3,11($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L548
	andi	$3,$2,0x00ff

$L564:
	lbu	$2,13($4)
	sb	$3,12($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L549
	andi	$3,$2,0x00ff

$L565:
	lbu	$2,14($4)
	sb	$3,13($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L550
	andi	$3,$2,0x00ff

$L566:
	lbu	$2,15($4)
	sb	$3,14($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L551
	nop

$L531:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$10,$L552
	sb	$2,15($4)

$L567:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels16x16_c
	.align	2
	.ent	biweight_h264_pixels16x16_c
	.type	biweight_h264_pixels16x16_c, @function
biweight_h264_pixels16x16_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$11,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	sll	$8,$2,$7
	lw	$10,20($sp)
	addiu	$7,$7,1
	move	$12,$0
	li	$9,-256			# 0xffffffffffffff00
	b	$L602
	li	$13,16			# 0x10

$L604:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L571
	nop

$L605:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L573
	nop

$L606:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L575
	nop

$L607:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L577
	nop

$L608:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L579
	nop

$L609:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L581
	nop

$L610:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L583
	nop

$L611:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,8($4)
	sb	$2,7($4)
	mult	$11,$3
	lbu	$2,8($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L585
	nop

$L612:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,9($4)
	sb	$2,8($4)
	mult	$11,$3
	lbu	$2,9($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L587
	nop

$L613:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,10($4)
	sb	$2,9($4)
	mult	$11,$3
	lbu	$2,10($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L589
	nop

$L614:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,11($4)
	sb	$2,10($4)
	mult	$11,$3
	lbu	$2,11($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L591
	nop

$L615:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,12($4)
	sb	$2,11($4)
	mult	$11,$3
	lbu	$2,12($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L593
	nop

$L616:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,13($4)
	sb	$2,12($4)
	mult	$11,$3
	lbu	$2,13($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L595
	nop

$L617:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,14($4)
	sb	$2,13($4)
	mult	$11,$3
	lbu	$2,14($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L597
	nop

$L618:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,15($4)
	sb	$2,14($4)
	mult	$11,$3
	lbu	$2,15($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L599
	nop

$L619:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	beq	$12,$13,$L621
	sb	$2,15($4)

$L620:
	addu	$4,$4,$6
	addu	$5,$5,$6
$L602:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$11,$3
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L604
	nop

	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L605
	nop

$L571:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L606
	nop

$L573:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L607
	nop

$L575:
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L608
	nop

$L577:
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L609
	nop

$L579:
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L610
	nop

$L581:
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L611
	nop

$L583:
	andi	$2,$2,0x00ff
	lbu	$3,8($4)
	sb	$2,7($4)
	mult	$11,$3
	lbu	$2,8($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L612
	nop

$L585:
	andi	$2,$2,0x00ff
	lbu	$3,9($4)
	sb	$2,8($4)
	mult	$11,$3
	lbu	$2,9($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L613
	nop

$L587:
	andi	$2,$2,0x00ff
	lbu	$3,10($4)
	sb	$2,9($4)
	mult	$11,$3
	lbu	$2,10($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L614
	nop

$L589:
	andi	$2,$2,0x00ff
	lbu	$3,11($4)
	sb	$2,10($4)
	mult	$11,$3
	lbu	$2,11($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L615
	nop

$L591:
	andi	$2,$2,0x00ff
	lbu	$3,12($4)
	sb	$2,11($4)
	mult	$11,$3
	lbu	$2,12($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L616
	nop

$L593:
	andi	$2,$2,0x00ff
	lbu	$3,13($4)
	sb	$2,12($4)
	mult	$11,$3
	lbu	$2,13($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L617
	nop

$L595:
	andi	$2,$2,0x00ff
	lbu	$3,14($4)
	sb	$2,13($4)
	mult	$11,$3
	lbu	$2,14($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L618
	nop

$L597:
	andi	$2,$2,0x00ff
	lbu	$3,15($4)
	sb	$2,14($4)
	mult	$11,$3
	lbu	$2,15($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L619
	nop

$L599:
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	bne	$12,$13,$L620
	sb	$2,15($4)

$L621:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels16x16_c
	.align	2
	.ent	weight_h264_pixels16x8_c
	.type	weight_h264_pixels16x8_c, @function
weight_h264_pixels16x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L623
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L623:
	move	$9,$0
	li	$8,-256			# 0xffffffffffffff00
	b	$L657
	li	$10,8			# 0x8

$L659:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L676
	andi	$3,$2,0x00ff

$L660:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L677
	andi	$3,$2,0x00ff

$L661:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L678
	andi	$3,$2,0x00ff

$L662:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L679
	andi	$3,$2,0x00ff

$L663:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L680
	andi	$3,$2,0x00ff

$L664:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L681
	andi	$3,$2,0x00ff

$L665:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L682
	andi	$3,$2,0x00ff

$L666:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,8($4)
	sb	$3,7($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L683
	andi	$3,$2,0x00ff

$L667:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,9($4)
	sb	$3,8($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L684
	andi	$3,$2,0x00ff

$L668:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,10($4)
	sb	$3,9($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L685
	andi	$3,$2,0x00ff

$L669:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,11($4)
	sb	$3,10($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L686
	andi	$3,$2,0x00ff

$L670:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,12($4)
	sb	$3,11($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L687
	andi	$3,$2,0x00ff

$L671:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,13($4)
	sb	$3,12($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L688
	andi	$3,$2,0x00ff

$L672:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,14($4)
	sb	$3,13($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L689
	andi	$3,$2,0x00ff

$L673:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,15($4)
	sb	$3,14($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L654
	nop

$L674:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$10,$L690
	sb	$2,15($4)

$L675:
	addu	$4,$4,$5
$L657:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L659
	andi	$3,$2,0x00ff

	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L660
	andi	$3,$2,0x00ff

$L676:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L661
	andi	$3,$2,0x00ff

$L677:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L662
	andi	$3,$2,0x00ff

$L678:
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L663
	andi	$3,$2,0x00ff

$L679:
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L664
	andi	$3,$2,0x00ff

$L680:
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L665
	andi	$3,$2,0x00ff

$L681:
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L666
	andi	$3,$2,0x00ff

$L682:
	lbu	$2,8($4)
	sb	$3,7($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L667
	andi	$3,$2,0x00ff

$L683:
	lbu	$2,9($4)
	sb	$3,8($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L668
	andi	$3,$2,0x00ff

$L684:
	lbu	$2,10($4)
	sb	$3,9($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L669
	andi	$3,$2,0x00ff

$L685:
	lbu	$2,11($4)
	sb	$3,10($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L670
	andi	$3,$2,0x00ff

$L686:
	lbu	$2,12($4)
	sb	$3,11($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L671
	andi	$3,$2,0x00ff

$L687:
	lbu	$2,13($4)
	sb	$3,12($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L672
	andi	$3,$2,0x00ff

$L688:
	lbu	$2,14($4)
	sb	$3,13($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L673
	andi	$3,$2,0x00ff

$L689:
	lbu	$2,15($4)
	sb	$3,14($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L674
	nop

$L654:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$10,$L675
	sb	$2,15($4)

$L690:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels16x8_c
	.align	2
	.ent	biweight_h264_pixels16x8_c
	.type	biweight_h264_pixels16x8_c, @function
biweight_h264_pixels16x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$11,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	sll	$8,$2,$7
	lw	$10,20($sp)
	addiu	$7,$7,1
	move	$12,$0
	li	$9,-256			# 0xffffffffffffff00
	b	$L725
	li	$13,8			# 0x8

$L727:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L694
	nop

$L728:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L696
	nop

$L729:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L698
	nop

$L730:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L700
	nop

$L731:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L702
	nop

$L732:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L704
	nop

$L733:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L706
	nop

$L734:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,8($4)
	sb	$2,7($4)
	mult	$11,$3
	lbu	$2,8($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L708
	nop

$L735:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,9($4)
	sb	$2,8($4)
	mult	$11,$3
	lbu	$2,9($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L710
	nop

$L736:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,10($4)
	sb	$2,9($4)
	mult	$11,$3
	lbu	$2,10($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L712
	nop

$L737:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,11($4)
	sb	$2,10($4)
	mult	$11,$3
	lbu	$2,11($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L714
	nop

$L738:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,12($4)
	sb	$2,11($4)
	mult	$11,$3
	lbu	$2,12($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L716
	nop

$L739:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,13($4)
	sb	$2,12($4)
	mult	$11,$3
	lbu	$2,13($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L718
	nop

$L740:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,14($4)
	sb	$2,13($4)
	mult	$11,$3
	lbu	$2,14($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L720
	nop

$L741:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,15($4)
	sb	$2,14($4)
	mult	$11,$3
	lbu	$2,15($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L722
	nop

$L742:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	beq	$12,$13,$L744
	sb	$2,15($4)

$L743:
	addu	$4,$4,$6
	addu	$5,$5,$6
$L725:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$11,$3
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L727
	nop

	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L728
	nop

$L694:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L729
	nop

$L696:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L730
	nop

$L698:
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L731
	nop

$L700:
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L732
	nop

$L702:
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L733
	nop

$L704:
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L734
	nop

$L706:
	andi	$2,$2,0x00ff
	lbu	$3,8($4)
	sb	$2,7($4)
	mult	$11,$3
	lbu	$2,8($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L735
	nop

$L708:
	andi	$2,$2,0x00ff
	lbu	$3,9($4)
	sb	$2,8($4)
	mult	$11,$3
	lbu	$2,9($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L736
	nop

$L710:
	andi	$2,$2,0x00ff
	lbu	$3,10($4)
	sb	$2,9($4)
	mult	$11,$3
	lbu	$2,10($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L737
	nop

$L712:
	andi	$2,$2,0x00ff
	lbu	$3,11($4)
	sb	$2,10($4)
	mult	$11,$3
	lbu	$2,11($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L738
	nop

$L714:
	andi	$2,$2,0x00ff
	lbu	$3,12($4)
	sb	$2,11($4)
	mult	$11,$3
	lbu	$2,12($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L739
	nop

$L716:
	andi	$2,$2,0x00ff
	lbu	$3,13($4)
	sb	$2,12($4)
	mult	$11,$3
	lbu	$2,13($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L740
	nop

$L718:
	andi	$2,$2,0x00ff
	lbu	$3,14($4)
	sb	$2,13($4)
	mult	$11,$3
	lbu	$2,14($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L741
	nop

$L720:
	andi	$2,$2,0x00ff
	lbu	$3,15($4)
	sb	$2,14($4)
	mult	$11,$3
	lbu	$2,15($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L742
	nop

$L722:
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	bne	$12,$13,$L743
	sb	$2,15($4)

$L744:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels16x8_c
	.align	2
	.ent	weight_h264_pixels8x16_c
	.type	weight_h264_pixels8x16_c, @function
weight_h264_pixels8x16_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L746
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L746:
	move	$9,$0
	li	$8,-256			# 0xffffffffffffff00
	b	$L764
	li	$10,16			# 0x10

$L766:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L775
	andi	$3,$2,0x00ff

$L767:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L776
	andi	$3,$2,0x00ff

$L768:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L777
	andi	$3,$2,0x00ff

$L769:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L778
	andi	$3,$2,0x00ff

$L770:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L779
	andi	$3,$2,0x00ff

$L771:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L780
	andi	$3,$2,0x00ff

$L772:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L761
	nop

$L773:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$10,$L781
	sb	$2,7($4)

$L774:
	addu	$4,$4,$5
$L764:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L766
	andi	$3,$2,0x00ff

	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L767
	andi	$3,$2,0x00ff

$L775:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L768
	andi	$3,$2,0x00ff

$L776:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L769
	andi	$3,$2,0x00ff

$L777:
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L770
	andi	$3,$2,0x00ff

$L778:
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L771
	andi	$3,$2,0x00ff

$L779:
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L772
	andi	$3,$2,0x00ff

$L780:
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L773
	nop

$L761:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$10,$L774
	sb	$2,7($4)

$L781:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels8x16_c
	.align	2
	.ent	biweight_h264_pixels8x16_c
	.type	biweight_h264_pixels8x16_c, @function
biweight_h264_pixels8x16_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$11,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	sll	$8,$2,$7
	lw	$10,20($sp)
	addiu	$7,$7,1
	move	$12,$0
	li	$9,-256			# 0xffffffffffffff00
	b	$L800
	li	$13,16			# 0x10

$L802:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L785
	nop

$L803:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L787
	nop

$L804:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L789
	nop

$L805:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L791
	nop

$L806:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L793
	nop

$L807:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L795
	nop

$L808:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L797
	nop

$L809:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	beq	$12,$13,$L811
	sb	$2,7($4)

$L810:
	addu	$4,$4,$6
	addu	$5,$5,$6
$L800:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$11,$3
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L802
	nop

	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L803
	nop

$L785:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L804
	nop

$L787:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L805
	nop

$L789:
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L806
	nop

$L791:
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L807
	nop

$L793:
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L808
	nop

$L795:
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L809
	nop

$L797:
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	bne	$12,$13,$L810
	sb	$2,7($4)

$L811:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels8x16_c
	.align	2
	.ent	weight_h264_pixels8x8_c
	.type	weight_h264_pixels8x8_c, @function
weight_h264_pixels8x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L813
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L813:
	move	$9,$0
	li	$8,-256			# 0xffffffffffffff00
	b	$L831
	li	$10,8			# 0x8

$L833:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L842
	andi	$3,$2,0x00ff

$L834:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L843
	andi	$3,$2,0x00ff

$L835:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L844
	andi	$3,$2,0x00ff

$L836:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L845
	andi	$3,$2,0x00ff

$L837:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L846
	andi	$3,$2,0x00ff

$L838:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L847
	andi	$3,$2,0x00ff

$L839:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L828
	nop

$L840:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$10,$L848
	sb	$2,7($4)

$L841:
	addu	$4,$4,$5
$L831:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L833
	andi	$3,$2,0x00ff

	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L834
	andi	$3,$2,0x00ff

$L842:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L835
	andi	$3,$2,0x00ff

$L843:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L836
	andi	$3,$2,0x00ff

$L844:
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L837
	andi	$3,$2,0x00ff

$L845:
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L838
	andi	$3,$2,0x00ff

$L846:
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L839
	andi	$3,$2,0x00ff

$L847:
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L840
	nop

$L828:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$10,$L841
	sb	$2,7($4)

$L848:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels8x8_c
	.align	2
	.ent	biweight_h264_pixels8x8_c
	.type	biweight_h264_pixels8x8_c, @function
biweight_h264_pixels8x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$11,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	sll	$8,$2,$7
	lw	$10,20($sp)
	addiu	$7,$7,1
	move	$12,$0
	li	$9,-256			# 0xffffffffffffff00
	b	$L867
	li	$13,8			# 0x8

$L869:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L852
	nop

$L870:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L854
	nop

$L871:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L856
	nop

$L872:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L858
	nop

$L873:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L860
	nop

$L874:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L862
	nop

$L875:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L864
	nop

$L876:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	beq	$12,$13,$L878
	sb	$2,7($4)

$L877:
	addu	$4,$4,$6
	addu	$5,$5,$6
$L867:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$11,$3
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L869
	nop

	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L870
	nop

$L852:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L871
	nop

$L854:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L872
	nop

$L856:
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L873
	nop

$L858:
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L874
	nop

$L860:
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L875
	nop

$L862:
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L876
	nop

$L864:
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	bne	$12,$13,$L877
	sb	$2,7($4)

$L878:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels8x8_c
	.align	2
	.ent	weight_h264_pixels8x4_c
	.type	weight_h264_pixels8x4_c, @function
weight_h264_pixels8x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L880
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L880:
	lbu	$2,0($4)
	li	$8,-256			# 0xffffffffffffff00
	mul	$3,$7,$2
	move	$9,$0
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L881
	li	$10,4			# 0x4

$L900:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L909
	andi	$3,$2,0x00ff

$L901:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L910
	andi	$3,$2,0x00ff

$L902:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L911
	andi	$3,$2,0x00ff

$L903:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L912
	andi	$3,$2,0x00ff

$L904:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L913
	andi	$3,$2,0x00ff

$L905:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L914
	andi	$3,$2,0x00ff

$L906:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	beq	$3,$0,$L895
	nop

$L907:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$10,$L915
	sb	$2,7($4)

$L908:
	addu	$4,$4,$5
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L900
	nop

$L881:
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L901
	andi	$3,$2,0x00ff

$L909:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L902
	andi	$3,$2,0x00ff

$L910:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L903
	andi	$3,$2,0x00ff

$L911:
	lbu	$2,4($4)
	sb	$3,3($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L904
	andi	$3,$2,0x00ff

$L912:
	lbu	$2,5($4)
	sb	$3,4($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L905
	andi	$3,$2,0x00ff

$L913:
	lbu	$2,6($4)
	sb	$3,5($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L906
	andi	$3,$2,0x00ff

$L914:
	lbu	$2,7($4)
	sb	$3,6($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$8
	bne	$3,$0,$L907
	nop

$L895:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$10,$L908
	sb	$2,7($4)

$L915:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels8x4_c
	.align	2
	.ent	biweight_h264_pixels8x4_c
	.type	biweight_h264_pixels8x4_c, @function
biweight_h264_pixels8x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lbu	$3,0($4)
	addiu	$2,$2,1
	lw	$11,16($sp)
	ori	$2,$2,0x1
	sll	$8,$2,$7
	mult	$11,$3
	lbu	$2,0($5)
	lw	$10,20($sp)
	addiu	$7,$7,1
	madd	$10,$2
	li	$9,-256			# 0xffffffffffffff00
	mflo	$2
	move	$12,$0
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L917
	li	$13,4			# 0x4

$L936:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L919
	nop

$L937:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L921
	nop

$L938:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L923
	nop

$L939:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L925
	nop

$L940:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L927
	nop

$L941:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L929
	nop

$L942:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	beq	$3,$0,$L931
	nop

$L943:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	beq	$12,$13,$L945
	sb	$2,7($4)

$L944:
	addu	$4,$4,$6
	lbu	$3,0($4)
	addu	$5,$5,$6
	mult	$11,$3
	lbu	$2,0($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L936
	nop

$L917:
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$11,$3
	lbu	$2,1($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L937
	nop

$L919:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$11,$3
	lbu	$2,2($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L938
	nop

$L921:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$11,$3
	lbu	$2,3($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L939
	nop

$L923:
	andi	$2,$2,0x00ff
	lbu	$3,4($4)
	sb	$2,3($4)
	mult	$11,$3
	lbu	$2,4($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L940
	nop

$L925:
	andi	$2,$2,0x00ff
	lbu	$3,5($4)
	sb	$2,4($4)
	mult	$11,$3
	lbu	$2,5($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L941
	nop

$L927:
	andi	$2,$2,0x00ff
	lbu	$3,6($4)
	sb	$2,5($4)
	mult	$11,$3
	lbu	$2,6($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L942
	nop

$L929:
	andi	$2,$2,0x00ff
	lbu	$3,7($4)
	sb	$2,6($4)
	mult	$11,$3
	lbu	$2,7($5)
	madd	$10,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$9
	bne	$3,$0,$L943
	nop

$L931:
	andi	$2,$2,0x00ff
	addiu	$12,$12,1
	bne	$12,$13,$L944
	sb	$2,7($4)

$L945:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels8x4_c
	.align	2
	.ent	weight_h264_pixels4x8_c
	.type	weight_h264_pixels4x8_c, @function
weight_h264_pixels4x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L947
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L947:
	move	$8,$0
	li	$9,-256			# 0xffffffffffffff00
	b	$L957
	li	$10,8			# 0x8

$L959:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L964
	andi	$3,$2,0x00ff

$L960:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L965
	andi	$3,$2,0x00ff

$L961:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L954
	nop

$L962:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	beq	$8,$10,$L966
	sb	$2,3($4)

$L963:
	addu	$4,$4,$5
$L957:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L959
	andi	$3,$2,0x00ff

	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L960
	andi	$3,$2,0x00ff

$L964:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L961
	andi	$3,$2,0x00ff

$L965:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L962
	nop

$L954:
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	bne	$8,$10,$L963
	sb	$2,3($4)

$L966:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels4x8_c
	.align	2
	.ent	biweight_h264_pixels4x8_c
	.type	biweight_h264_pixels4x8_c, @function
biweight_h264_pixels4x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$12,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	sll	$8,$2,$7
	lw	$11,20($sp)
	addiu	$7,$7,1
	move	$9,$0
	li	$10,-256			# 0xffffffffffffff00
	b	$L977
	li	$13,8			# 0x8

$L979:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L970
	nop

$L980:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L972
	nop

$L981:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L974
	nop

$L982:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$13,$L984
	sb	$2,3($4)

$L983:
	addu	$4,$4,$6
	addu	$5,$5,$6
$L977:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$12,$3
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L979
	nop

	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L980
	nop

$L970:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L981
	nop

$L972:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L982
	nop

$L974:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$13,$L983
	sb	$2,3($4)

$L984:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels4x8_c
	.align	2
	.ent	weight_h264_pixels4x4_c
	.type	weight_h264_pixels4x4_c, @function
weight_h264_pixels4x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L986
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L986:
	lbu	$2,0($4)
	li	$9,-256			# 0xffffffffffffff00
	mul	$3,$7,$2
	move	$8,$0
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L987
	li	$10,4			# 0x4

$L998:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1003
	andi	$3,$2,0x00ff

$L999:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1004
	andi	$3,$2,0x00ff

$L1000:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L993
	nop

$L1001:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	beq	$8,$10,$L1005
	sb	$2,3($4)

$L1002:
	addu	$4,$4,$5
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L998
	nop

$L987:
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L999
	andi	$3,$2,0x00ff

$L1003:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1000
	andi	$3,$2,0x00ff

$L1004:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1001
	nop

$L993:
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	bne	$8,$10,$L1002
	sb	$2,3($4)

$L1005:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels4x4_c
	.align	2
	.ent	biweight_h264_pixels4x4_c
	.type	biweight_h264_pixels4x4_c, @function
biweight_h264_pixels4x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lbu	$3,0($4)
	addiu	$2,$2,1
	lw	$12,16($sp)
	ori	$2,$2,0x1
	sll	$8,$2,$7
	mult	$12,$3
	lbu	$2,0($5)
	lw	$11,20($sp)
	addiu	$7,$7,1
	madd	$11,$2
	li	$10,-256			# 0xffffffffffffff00
	mflo	$2
	move	$9,$0
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1007
	li	$13,4			# 0x4

$L1018:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1009
	nop

$L1019:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1011
	nop

$L1020:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1013
	nop

$L1021:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$13,$L1023
	sb	$2,3($4)

$L1022:
	addu	$4,$4,$6
	lbu	$3,0($4)
	addu	$5,$5,$6
	mult	$12,$3
	lbu	$2,0($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1018
	nop

$L1007:
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1019
	nop

$L1009:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1020
	nop

$L1011:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1021
	nop

$L1013:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$13,$L1022
	sb	$2,3($4)

$L1023:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels4x4_c
	.align	2
	.ent	weight_h264_pixels4x2_c
	.type	weight_h264_pixels4x2_c, @function
weight_h264_pixels4x2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L1025
	sll	$11,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$11,$11,$2
$L1025:
	lbu	$2,0($4)
	li	$9,-256			# 0xffffffffffffff00
	mul	$3,$7,$2
	move	$8,$0
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1026
	li	$10,2			# 0x2

$L1037:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1042
	andi	$3,$2,0x00ff

$L1038:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1043
	andi	$3,$2,0x00ff

$L1039:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$3,$2,0x00ff
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	beq	$3,$0,$L1032
	nop

$L1040:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	beq	$8,$10,$L1044
	sb	$2,3($4)

$L1041:
	addu	$4,$4,$5
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1037
	nop

$L1026:
	andi	$3,$2,0x00ff
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1038
	andi	$3,$2,0x00ff

$L1042:
	lbu	$2,2($4)
	sb	$3,1($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1039
	andi	$3,$2,0x00ff

$L1043:
	lbu	$2,3($4)
	sb	$3,2($4)
	mul	$3,$7,$2
	addu	$2,$3,$11
	sra	$2,$2,$6
	and	$3,$2,$9
	bne	$3,$0,$L1040
	nop

$L1032:
	andi	$2,$2,0x00ff
	addiu	$8,$8,1
	bne	$8,$10,$L1041
	sb	$2,3($4)

$L1044:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	weight_h264_pixels4x2_c
	.align	2
	.ent	biweight_h264_pixels4x2_c
	.type	biweight_h264_pixels4x2_c, @function
biweight_h264_pixels4x2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lbu	$3,0($4)
	addiu	$2,$2,1
	lw	$12,16($sp)
	ori	$2,$2,0x1
	sll	$8,$2,$7
	mult	$12,$3
	lbu	$2,0($5)
	lw	$11,20($sp)
	addiu	$7,$7,1
	madd	$11,$2
	li	$10,-256			# 0xffffffffffffff00
	mflo	$2
	move	$9,$0
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1046
	li	$13,2			# 0x2

$L1057:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1048
	nop

$L1058:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1050
	nop

$L1059:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	beq	$3,$0,$L1052
	nop

$L1060:
	subu	$2,$0,$2
	sra	$2,$2,31
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	beq	$9,$13,$L1062
	sb	$2,3($4)

$L1061:
	addu	$4,$4,$6
	lbu	$3,0($4)
	addu	$5,$5,$6
	mult	$12,$3
	lbu	$2,0($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1057
	nop

$L1046:
	andi	$2,$2,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$12,$3
	lbu	$2,1($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1058
	nop

$L1048:
	andi	$2,$2,0x00ff
	lbu	$3,2($4)
	sb	$2,1($4)
	mult	$12,$3
	lbu	$2,2($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1059
	nop

$L1050:
	andi	$2,$2,0x00ff
	lbu	$3,3($4)
	sb	$2,2($4)
	mult	$12,$3
	lbu	$2,3($5)
	madd	$11,$2
	mflo	$2
	addu	$2,$2,$8
	sra	$2,$2,$7
	and	$3,$2,$10
	bne	$3,$0,$L1060
	nop

$L1052:
	andi	$2,$2,0x00ff
	addiu	$9,$9,1
	bne	$9,$13,$L1061
	sb	$2,3($4)

$L1062:
	j	$31
	nop

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels4x2_c
	.align	2
	.ent	weight_h264_pixels2x4_c
	.type	weight_h264_pixels2x4_c, @function
weight_h264_pixels2x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L1064
	sll	$12,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$12,$12,$2
$L1064:
	move	$9,$0
	li	$10,-256			# 0xffffffffffffff00
	li	$11,4			# 0x4
$L1070:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$12
	sra	$8,$2,$6
	subu	$3,$0,$8
	and	$2,$8,$10
	beq	$2,$0,$L1065
	sra	$3,$3,31

	andi	$3,$3,0x00ff
$L1066:
	lbu	$2,1($4)
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$12
	sra	$8,$2,$6
	subu	$3,$0,$8
	and	$2,$8,$10
	beq	$2,$0,$L1067
	sra	$3,$3,31

	andi	$2,$3,0x00ff
$L1068:
	addiu	$9,$9,1
	sb	$2,1($4)
	bne	$9,$11,$L1070
	addu	$4,$4,$5

	j	$31
	nop

$L1067:
	b	$L1068
	andi	$2,$8,0x00ff

$L1065:
	b	$L1066
	andi	$3,$8,0x00ff

	.set	macro
	.set	reorder
	.end	weight_h264_pixels2x4_c
	.align	2
	.ent	biweight_h264_pixels2x4_c
	.type	biweight_h264_pixels2x4_c, @function
biweight_h264_pixels2x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$13,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	lw	$12,20($sp)
	sll	$10,$2,$7
	move	$9,$0
	addiu	$7,$7,1
	li	$11,-256			# 0xffffffffffffff00
	li	$14,4			# 0x4
$L1078:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$13,$3
	madd	$12,$2
	mflo	$2
	addu	$2,$2,$10
	sra	$8,$2,$7
	subu	$3,$0,$8
	and	$2,$8,$11
	beq	$2,$0,$L1073
	sra	$3,$3,31

	andi	$2,$3,0x00ff
$L1074:
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$13,$3
	lbu	$2,1($5)
	madd	$12,$2
	mflo	$2
	addu	$2,$2,$10
	sra	$8,$2,$7
	subu	$3,$0,$8
	and	$2,$8,$11
	beq	$2,$0,$L1075
	sra	$3,$3,31

	andi	$2,$3,0x00ff
$L1076:
	addiu	$9,$9,1
	sb	$2,1($4)
	addu	$5,$5,$6
	bne	$9,$14,$L1078
	addu	$4,$4,$6

	j	$31
	nop

$L1075:
	b	$L1076
	andi	$2,$8,0x00ff

$L1073:
	b	$L1074
	andi	$2,$8,0x00ff

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels2x4_c
	.align	2
	.ent	weight_h264_pixels2x2_c
	.type	weight_h264_pixels2x2_c, @function
weight_h264_pixels2x2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,16($sp)
	beq	$6,$0,$L1081
	sll	$12,$2,$6

	addiu	$3,$6,-1
	li	$2,1			# 0x1
	sll	$2,$2,$3
	addu	$12,$12,$2
$L1081:
	move	$9,$0
	li	$10,-256			# 0xffffffffffffff00
	li	$11,2			# 0x2
$L1087:
	lbu	$2,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$12
	sra	$8,$2,$6
	subu	$3,$0,$8
	and	$2,$8,$10
	beq	$2,$0,$L1082
	sra	$3,$3,31

	lbu	$2,1($4)
	andi	$3,$3,0x00ff
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$12
	sra	$8,$2,$6
	subu	$3,$0,$8
	and	$2,$8,$10
	beq	$2,$0,$L1084
	sra	$3,$3,31

$L1089:
	andi	$2,$3,0x00ff
$L1085:
	addiu	$9,$9,1
	sb	$2,1($4)
	bne	$9,$11,$L1087
	addu	$4,$4,$5

	j	$31
	nop

$L1082:
	lbu	$2,1($4)
	andi	$3,$8,0x00ff
	sb	$3,0($4)
	mul	$3,$7,$2
	addu	$2,$3,$12
	sra	$8,$2,$6
	subu	$3,$0,$8
	and	$2,$8,$10
	bne	$2,$0,$L1089
	sra	$3,$3,31

$L1084:
	b	$L1085
	andi	$2,$8,0x00ff

	.set	macro
	.set	reorder
	.end	weight_h264_pixels2x2_c
	.align	2
	.ent	biweight_h264_pixels2x2_c
	.type	biweight_h264_pixels2x2_c, @function
biweight_h264_pixels2x2_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lw	$2,24($sp)
	lw	$13,16($sp)
	addiu	$2,$2,1
	ori	$2,$2,0x1
	lw	$12,20($sp)
	sll	$10,$2,$7
	move	$9,$0
	addiu	$7,$7,1
	li	$11,-256			# 0xffffffffffffff00
	li	$14,2			# 0x2
$L1096:
	lbu	$3,0($4)
	lbu	$2,0($5)
	mult	$13,$3
	madd	$12,$2
	mflo	$2
	addu	$2,$2,$10
	sra	$8,$2,$7
	subu	$3,$0,$8
	and	$2,$8,$11
	beq	$2,$0,$L1091
	sra	$3,$3,31

	andi	$2,$3,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$13,$3
	lbu	$2,1($5)
	madd	$12,$2
	mflo	$2
	addu	$2,$2,$10
	sra	$8,$2,$7
	subu	$3,$0,$8
	and	$2,$8,$11
	beq	$2,$0,$L1093
	sra	$3,$3,31

$L1098:
	andi	$2,$3,0x00ff
$L1094:
	addiu	$9,$9,1
	sb	$2,1($4)
	addu	$5,$5,$6
	bne	$9,$14,$L1096
	addu	$4,$4,$6

	j	$31
	nop

$L1091:
	andi	$2,$8,0x00ff
	lbu	$3,1($4)
	sb	$2,0($4)
	mult	$13,$3
	lbu	$2,1($5)
	madd	$12,$2
	mflo	$2
	addu	$2,$2,$10
	sra	$8,$2,$7
	subu	$3,$0,$8
	and	$2,$8,$11
	bne	$2,$0,$L1098
	sra	$3,$3,31

$L1093:
	b	$L1094
	andi	$2,$8,0x00ff

	.set	macro
	.set	reorder
	.end	biweight_h264_pixels2x2_c
	.align	2
	.globl	h264dsputil_init
	.ent	h264dsputil_init
	.type	h264dsputil_init, @function
h264dsputil_init:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$28,%hi(__gnu_local_gp)
	addiu	$28,$28,%lo(__gnu_local_gp)
	lw	$2,%got(ff_h264_idct_add_c)($28)
	lw	$3,%got(ff_h264_idct8_add_c)($28)
	sw	$2,2976($4)
	lw	$2,%got(ff_h264_idct_dc_add_c)($28)
	sw	$3,2980($4)
	sw	$2,2984($4)
	lw	$3,%got(ff_h264_idct8_dc_add_c)($28)
	lui	$2,%hi(put_h264_qpel16_mc00_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc00_c)
	sw	$3,2988($4)
	sw	$2,1388($4)
	lui	$3,%hi(put_h264_qpel16_mc10_c)
	lui	$2,%hi(put_h264_qpel16_mc20_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc10_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc20_c)
	sw	$3,1392($4)
	sw	$2,1396($4)
	lui	$3,%hi(put_h264_qpel16_mc30_c)
	lui	$2,%hi(put_h264_qpel16_mc01_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc30_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc01_c)
	sw	$3,1400($4)
	sw	$2,1404($4)
	lui	$3,%hi(put_h264_qpel16_mc11_c)
	lui	$2,%hi(put_h264_qpel16_mc21_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc11_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc21_c)
	sw	$3,1408($4)
	sw	$2,1412($4)
	lui	$3,%hi(put_h264_qpel16_mc31_c)
	lui	$2,%hi(put_h264_qpel16_mc02_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc31_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc02_c)
	sw	$3,1416($4)
	sw	$2,1420($4)
	lui	$3,%hi(put_h264_qpel16_mc12_c)
	lui	$2,%hi(put_h264_qpel16_mc22_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc12_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc22_c)
	sw	$3,1424($4)
	sw	$2,1428($4)
	lui	$3,%hi(put_h264_qpel16_mc32_c)
	lui	$2,%hi(put_h264_qpel16_mc03_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc32_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc03_c)
	sw	$3,1432($4)
	sw	$2,1436($4)
	lui	$3,%hi(put_h264_qpel16_mc13_c)
	lui	$2,%hi(put_h264_qpel16_mc23_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc13_c)
	addiu	$2,$2,%lo(put_h264_qpel16_mc23_c)
	sw	$3,1440($4)
	sw	$2,1444($4)
	lui	$3,%hi(put_h264_qpel16_mc33_c)
	lui	$2,%hi(put_h264_qpel8_mc00_c)
	addiu	$3,$3,%lo(put_h264_qpel16_mc33_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc00_c)
	sw	$3,1448($4)
	sw	$2,1452($4)
	lui	$3,%hi(put_h264_qpel8_mc10_c)
	lui	$2,%hi(put_h264_qpel8_mc20_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc10_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc20_c)
	sw	$3,1456($4)
	sw	$2,1460($4)
	lui	$3,%hi(put_h264_qpel8_mc30_c)
	lui	$2,%hi(put_h264_qpel8_mc01_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc30_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc01_c)
	sw	$3,1464($4)
	sw	$2,1468($4)
	lui	$3,%hi(put_h264_qpel8_mc11_c)
	lui	$2,%hi(put_h264_qpel8_mc21_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc11_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc21_c)
	sw	$3,1472($4)
	sw	$2,1476($4)
	lui	$3,%hi(put_h264_qpel8_mc31_c)
	lui	$2,%hi(put_h264_qpel8_mc02_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc31_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc02_c)
	sw	$3,1480($4)
	sw	$2,1484($4)
	lui	$3,%hi(put_h264_qpel8_mc12_c)
	lui	$2,%hi(put_h264_qpel8_mc22_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc12_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc22_c)
	sw	$3,1488($4)
	sw	$2,1492($4)
	lui	$3,%hi(put_h264_qpel8_mc32_c)
	lui	$2,%hi(put_h264_qpel8_mc03_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc32_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc03_c)
	sw	$3,1496($4)
	sw	$2,1500($4)
	lui	$3,%hi(put_h264_qpel8_mc13_c)
	lui	$2,%hi(put_h264_qpel8_mc23_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc13_c)
	addiu	$2,$2,%lo(put_h264_qpel8_mc23_c)
	sw	$3,1504($4)
	sw	$2,1508($4)
	lui	$3,%hi(put_h264_qpel8_mc33_c)
	lui	$2,%hi(put_h264_qpel4_mc00_c)
	addiu	$3,$3,%lo(put_h264_qpel8_mc33_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc00_c)
	sw	$3,1512($4)
	sw	$2,1516($4)
	lui	$3,%hi(put_h264_qpel4_mc10_c)
	lui	$2,%hi(put_h264_qpel4_mc20_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc10_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc20_c)
	sw	$3,1520($4)
	sw	$2,1524($4)
	lui	$3,%hi(put_h264_qpel4_mc30_c)
	lui	$2,%hi(put_h264_qpel4_mc01_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc30_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc01_c)
	sw	$3,1528($4)
	sw	$2,1532($4)
	lui	$3,%hi(put_h264_qpel4_mc11_c)
	lui	$2,%hi(put_h264_qpel4_mc21_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc11_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc21_c)
	sw	$3,1536($4)
	sw	$2,1540($4)
	lui	$3,%hi(put_h264_qpel4_mc31_c)
	lui	$2,%hi(put_h264_qpel4_mc02_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc31_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc02_c)
	sw	$3,1544($4)
	sw	$2,1548($4)
	lui	$3,%hi(put_h264_qpel4_mc12_c)
	lui	$2,%hi(put_h264_qpel4_mc22_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc12_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc22_c)
	sw	$3,1552($4)
	sw	$2,1556($4)
	lui	$3,%hi(put_h264_qpel4_mc32_c)
	lui	$2,%hi(put_h264_qpel4_mc03_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc32_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc03_c)
	sw	$3,1560($4)
	sw	$2,1564($4)
	lui	$3,%hi(put_h264_qpel4_mc13_c)
	lui	$2,%hi(put_h264_qpel4_mc23_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc13_c)
	addiu	$2,$2,%lo(put_h264_qpel4_mc23_c)
	sw	$3,1568($4)
	sw	$2,1572($4)
	lui	$3,%hi(put_h264_qpel4_mc33_c)
	lui	$2,%hi(put_h264_qpel2_mc00_c)
	addiu	$3,$3,%lo(put_h264_qpel4_mc33_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc00_c)
	sw	$3,1576($4)
	sw	$2,1580($4)
	lui	$3,%hi(put_h264_qpel2_mc10_c)
	lui	$2,%hi(put_h264_qpel2_mc20_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc10_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc20_c)
	sw	$3,1584($4)
	sw	$2,1588($4)
	lui	$3,%hi(put_h264_qpel2_mc30_c)
	lui	$2,%hi(put_h264_qpel2_mc01_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc30_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc01_c)
	sw	$3,1592($4)
	sw	$2,1596($4)
	lui	$3,%hi(put_h264_qpel2_mc11_c)
	lui	$2,%hi(put_h264_qpel2_mc21_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc11_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc21_c)
	sw	$3,1600($4)
	sw	$2,1604($4)
	lui	$3,%hi(put_h264_qpel2_mc31_c)
	lui	$2,%hi(put_h264_qpel2_mc02_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc31_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc02_c)
	sw	$3,1608($4)
	sw	$2,1612($4)
	lui	$3,%hi(put_h264_qpel2_mc12_c)
	lui	$2,%hi(put_h264_qpel2_mc22_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc12_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc22_c)
	sw	$3,1616($4)
	sw	$2,1620($4)
	lui	$3,%hi(put_h264_qpel2_mc32_c)
	lui	$2,%hi(put_h264_qpel2_mc03_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc32_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc03_c)
	sw	$3,1624($4)
	sw	$2,1628($4)
	lui	$3,%hi(put_h264_qpel2_mc13_c)
	lui	$2,%hi(put_h264_qpel2_mc23_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc13_c)
	addiu	$2,$2,%lo(put_h264_qpel2_mc23_c)
	sw	$3,1632($4)
	sw	$2,1636($4)
	lui	$3,%hi(put_h264_qpel2_mc33_c)
	lui	$2,%hi(avg_h264_qpel16_mc00_c)
	addiu	$3,$3,%lo(put_h264_qpel2_mc33_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc00_c)
	sw	$3,1640($4)
	sw	$2,1644($4)
	lui	$3,%hi(avg_h264_qpel16_mc10_c)
	lui	$2,%hi(avg_h264_qpel16_mc20_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc10_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc20_c)
	sw	$3,1648($4)
	sw	$2,1652($4)
	lui	$3,%hi(avg_h264_qpel16_mc30_c)
	lui	$2,%hi(avg_h264_qpel16_mc01_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc30_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc01_c)
	sw	$3,1656($4)
	sw	$2,1660($4)
	lui	$3,%hi(avg_h264_qpel16_mc11_c)
	lui	$2,%hi(avg_h264_qpel16_mc21_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc11_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc21_c)
	sw	$3,1664($4)
	sw	$2,1668($4)
	lui	$3,%hi(avg_h264_qpel16_mc31_c)
	lui	$2,%hi(avg_h264_qpel16_mc02_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc31_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc02_c)
	sw	$3,1672($4)
	sw	$2,1676($4)
	lui	$3,%hi(avg_h264_qpel16_mc12_c)
	lui	$2,%hi(avg_h264_qpel16_mc22_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc12_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc22_c)
	sw	$3,1680($4)
	sw	$2,1684($4)
	lui	$3,%hi(avg_h264_qpel16_mc32_c)
	lui	$2,%hi(avg_h264_qpel16_mc03_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc32_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc03_c)
	sw	$3,1688($4)
	sw	$2,1692($4)
	lui	$3,%hi(avg_h264_qpel16_mc13_c)
	lui	$2,%hi(avg_h264_qpel16_mc23_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc13_c)
	addiu	$2,$2,%lo(avg_h264_qpel16_mc23_c)
	sw	$3,1696($4)
	sw	$2,1700($4)
	lui	$3,%hi(avg_h264_qpel16_mc33_c)
	lui	$2,%hi(avg_h264_qpel8_mc00_c)
	addiu	$3,$3,%lo(avg_h264_qpel16_mc33_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc00_c)
	sw	$3,1704($4)
	sw	$2,1708($4)
	lui	$3,%hi(avg_h264_qpel8_mc10_c)
	lui	$2,%hi(avg_h264_qpel8_mc20_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc10_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc20_c)
	sw	$3,1712($4)
	sw	$2,1716($4)
	lui	$3,%hi(avg_h264_qpel8_mc30_c)
	lui	$2,%hi(avg_h264_qpel8_mc01_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc30_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc01_c)
	sw	$3,1720($4)
	sw	$2,1724($4)
	lui	$3,%hi(avg_h264_qpel8_mc11_c)
	lui	$2,%hi(avg_h264_qpel8_mc21_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc11_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc21_c)
	sw	$3,1728($4)
	sw	$2,1732($4)
	lui	$3,%hi(avg_h264_qpel8_mc31_c)
	lui	$2,%hi(avg_h264_qpel8_mc02_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc31_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc02_c)
	sw	$3,1736($4)
	sw	$2,1740($4)
	lui	$3,%hi(avg_h264_qpel8_mc12_c)
	lui	$2,%hi(avg_h264_qpel8_mc22_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc12_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc22_c)
	sw	$3,1744($4)
	sw	$2,1748($4)
	lui	$3,%hi(avg_h264_qpel8_mc32_c)
	lui	$2,%hi(avg_h264_qpel8_mc03_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc32_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc03_c)
	sw	$3,1752($4)
	sw	$2,1756($4)
	lui	$3,%hi(avg_h264_qpel8_mc13_c)
	lui	$2,%hi(avg_h264_qpel8_mc23_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc13_c)
	addiu	$2,$2,%lo(avg_h264_qpel8_mc23_c)
	sw	$3,1760($4)
	sw	$2,1764($4)
	lui	$3,%hi(avg_h264_qpel8_mc33_c)
	lui	$2,%hi(avg_h264_qpel4_mc00_c)
	addiu	$3,$3,%lo(avg_h264_qpel8_mc33_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc00_c)
	sw	$3,1768($4)
	sw	$2,1772($4)
	lui	$3,%hi(avg_h264_qpel4_mc10_c)
	lui	$2,%hi(avg_h264_qpel4_mc20_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc10_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc20_c)
	sw	$3,1776($4)
	sw	$2,1780($4)
	lui	$3,%hi(avg_h264_qpel4_mc30_c)
	lui	$2,%hi(avg_h264_qpel4_mc01_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc30_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc01_c)
	sw	$3,1784($4)
	sw	$2,1788($4)
	lui	$3,%hi(avg_h264_qpel4_mc11_c)
	lui	$2,%hi(avg_h264_qpel4_mc21_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc11_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc21_c)
	sw	$3,1792($4)
	sw	$2,1796($4)
	lui	$3,%hi(avg_h264_qpel4_mc31_c)
	lui	$2,%hi(avg_h264_qpel4_mc02_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc31_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc02_c)
	sw	$3,1800($4)
	sw	$2,1804($4)
	lui	$3,%hi(avg_h264_qpel4_mc12_c)
	lui	$2,%hi(avg_h264_qpel4_mc22_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc12_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc22_c)
	sw	$3,1808($4)
	sw	$2,1812($4)
	lui	$3,%hi(avg_h264_qpel4_mc32_c)
	lui	$2,%hi(avg_h264_qpel4_mc03_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc32_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc03_c)
	sw	$3,1816($4)
	sw	$2,1820($4)
	lui	$3,%hi(avg_h264_qpel4_mc13_c)
	lui	$2,%hi(avg_h264_qpel4_mc23_c)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc13_c)
	addiu	$2,$2,%lo(avg_h264_qpel4_mc23_c)
	sw	$3,1824($4)
	sw	$2,1828($4)
	lui	$3,%hi(avg_h264_qpel4_mc33_c)
	lui	$2,%hi(put_h264_chroma_mc8_mxu)
	addiu	$3,$3,%lo(avg_h264_qpel4_mc33_c)
	addiu	$2,$2,%lo(put_h264_chroma_mc8_mxu)
	sw	$3,1832($4)
	sw	$2,1352($4)
	lui	$3,%hi(put_h264_chroma_mc4_mxu)
	lui	$2,%hi(put_h264_chroma_mc2_c)
	addiu	$3,$3,%lo(put_h264_chroma_mc4_mxu)
	addiu	$2,$2,%lo(put_h264_chroma_mc2_c)
	sw	$3,1356($4)
	sw	$2,1360($4)
	lui	$3,%hi(avg_h264_chroma_mc8_c)
	lui	$2,%hi(avg_h264_chroma_mc4_c)
	addiu	$3,$3,%lo(avg_h264_chroma_mc8_c)
	addiu	$2,$2,%lo(avg_h264_chroma_mc4_c)
	sw	$3,1376($4)
	sw	$2,1380($4)
	lui	$3,%hi(avg_h264_chroma_mc2_c)
	lui	$2,%hi(put_no_rnd_h264_chroma_mc8_mxu)
	addiu	$3,$3,%lo(avg_h264_chroma_mc2_c)
	addiu	$2,$2,%lo(put_no_rnd_h264_chroma_mc8_mxu)
	sw	$3,1384($4)
	sw	$2,1364($4)
	lui	$3,%hi(weight_h264_pixels16x16_c)
	lui	$2,%hi(weight_h264_pixels16x8_c)
	addiu	$3,$3,%lo(weight_h264_pixels16x16_c)
	addiu	$2,$2,%lo(weight_h264_pixels16x8_c)
	sw	$3,2412($4)
	sw	$2,2416($4)
	lui	$3,%hi(weight_h264_pixels8x16_c)
	lui	$2,%hi(weight_h264_pixels8x8_c)
	addiu	$3,$3,%lo(weight_h264_pixels8x16_c)
	addiu	$2,$2,%lo(weight_h264_pixels8x8_c)
	sw	$3,2420($4)
	sw	$2,2424($4)
	lui	$3,%hi(weight_h264_pixels8x4_c)
	lui	$2,%hi(weight_h264_pixels4x8_c)
	addiu	$3,$3,%lo(weight_h264_pixels8x4_c)
	addiu	$2,$2,%lo(weight_h264_pixels4x8_c)
	sw	$3,2428($4)
	sw	$2,2432($4)
	lui	$3,%hi(weight_h264_pixels4x4_c)
	lui	$2,%hi(weight_h264_pixels4x2_c)
	addiu	$3,$3,%lo(weight_h264_pixels4x4_c)
	addiu	$2,$2,%lo(weight_h264_pixels4x2_c)
	sw	$3,2436($4)
	sw	$2,2440($4)
	lui	$3,%hi(weight_h264_pixels2x4_c)
	lui	$2,%hi(weight_h264_pixels2x2_c)
	addiu	$3,$3,%lo(weight_h264_pixels2x4_c)
	addiu	$2,$2,%lo(weight_h264_pixels2x2_c)
	sw	$3,2444($4)
	sw	$2,2448($4)
	lui	$3,%hi(biweight_h264_pixels16x16_c)
	lui	$2,%hi(biweight_h264_pixels16x8_c)
	addiu	$3,$3,%lo(biweight_h264_pixels16x16_c)
	addiu	$2,$2,%lo(biweight_h264_pixels16x8_c)
	sw	$3,2452($4)
	sw	$2,2456($4)
	lui	$3,%hi(biweight_h264_pixels8x16_c)
	lui	$2,%hi(biweight_h264_pixels8x8_c)
	addiu	$3,$3,%lo(biweight_h264_pixels8x16_c)
	addiu	$2,$2,%lo(biweight_h264_pixels8x8_c)
	sw	$3,2460($4)
	sw	$2,2464($4)
	lui	$3,%hi(biweight_h264_pixels8x4_c)
	lui	$2,%hi(biweight_h264_pixels4x8_c)
	addiu	$3,$3,%lo(biweight_h264_pixels8x4_c)
	addiu	$2,$2,%lo(biweight_h264_pixels4x8_c)
	sw	$3,2468($4)
	sw	$2,2472($4)
	lui	$3,%hi(biweight_h264_pixels4x4_c)
	lui	$2,%hi(biweight_h264_pixels4x2_c)
	addiu	$3,$3,%lo(biweight_h264_pixels4x4_c)
	addiu	$2,$2,%lo(biweight_h264_pixels4x2_c)
	sw	$3,2476($4)
	sw	$2,2480($4)
	lui	$3,%hi(biweight_h264_pixels2x4_c)
	lui	$2,%hi(biweight_h264_pixels2x2_c)
	addiu	$3,$3,%lo(biweight_h264_pixels2x4_c)
	addiu	$2,$2,%lo(biweight_h264_pixels2x2_c)
	sw	$3,2484($4)
	sw	$2,2488($4)
	lui	$3,%hi(h264_v_loop_filter_luma_mxu)
	lui	$2,%hi(h264_h_loop_filter_luma_mxu)
	addiu	$3,$3,%lo(h264_v_loop_filter_luma_mxu)
	addiu	$2,$2,%lo(h264_h_loop_filter_luma_mxu)
	sw	$3,2816($4)
	sw	$2,2820($4)
	lui	$3,%hi(h264_v_loop_filter_chroma_mxu)
	lui	$2,%hi(h264_h_loop_filter_chroma_mxu)
	addiu	$3,$3,%lo(h264_v_loop_filter_chroma_mxu)
	addiu	$2,$2,%lo(h264_h_loop_filter_chroma_mxu)
	sw	$3,2824($4)
	sw	$2,2828($4)
	lui	$3,%hi(h264_v_loop_filter_chroma_intra_mxu)
	lui	$2,%hi(h264_h_loop_filter_chroma_intra_mxu)
	addiu	$3,$3,%lo(h264_v_loop_filter_chroma_intra_mxu)
	addiu	$2,$2,%lo(h264_h_loop_filter_chroma_intra_mxu)
	sw	$3,2832($4)
	sw	$2,2836($4)
	j	$31
	sw	$0,2840($4)

	.set	macro
	.set	reorder
	.end	h264dsputil_init
	.align	2
	.ent	avg_h264_qpel16_mc32_c
	.type	avg_h264_qpel16_mc32_c, @function
avg_h264_qpel16_mc32_c:
	.set	nomips16
	.frame	$sp,1584,$31		# vars= 1520, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-1584
	sw	$31,1580($sp)
	sw	$21,1576($sp)
	sw	$20,1572($sp)
	sw	$19,1568($sp)
	sw	$18,1564($sp)
	sw	$17,1560($sp)
	sw	$16,1556($sp)
	.cprestore	24
	sll	$2,$6,1
	subu	$2,$5,$2
	addiu	$19,$sp,544
	move	$20,$5
	move	$21,$4
	move	$18,$6
	addiu	$4,$2,1
	move	$17,$19
	addiu	$5,$sp,880
$L1102:
	lwl	$2,3($4)
	lwr	$2,0($4)
	swl	$2,3($17)
	swr	$2,0($17)
	lwl	$3,7($4)
	lwr	$3,4($4)
	swl	$3,7($17)
	swr	$3,4($17)
	lwl	$2,11($4)
	lwr	$2,8($4)
	swl	$2,11($17)
	swr	$2,8($17)
	lwl	$3,15($4)
	lwr	$3,12($4)
	swl	$3,15($17)
	swr	$3,12($17)
	addiu	$17,$17,16
	bne	$17,$5,$L1102
	addu	$4,$4,$18

	addiu	$4,$sp,32
	addiu	$5,$sp,576
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$16,$sp,288

	li	$2,16			# 0x10
	move	$6,$20
	li	$7,16			# 0x10
	move	$5,$17
	move	$4,$16
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$8,$21
	ori	$9,$2,0xfefe
	addiu	$6,$sp,36
	move	$7,$21
$L1103:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$19,$L1103
	addu	$7,$7,$18

	addiu	$10,$sp,296
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,40
	move	$7,$10
$L1104:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1104
	addu	$8,$8,$18

	lw	$31,1580($sp)
	lw	$21,1576($sp)
	lw	$20,1572($sp)
	lw	$19,1568($sp)
	lw	$18,1564($sp)
	lw	$17,1560($sp)
	lw	$16,1556($sp)
	j	$31
	addiu	$sp,$sp,1584

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc32_c
	.align	2
	.ent	avg_h264_qpel8_mc10_c
	.type	avg_h264_qpel8_mc10_c, @function
avg_h264_qpel8_mc10_c:
	.set	nomips16
	.frame	$sp,112,$31		# vars= 64, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$19,104($sp)
	sw	$18,100($sp)
	sw	$17,96($sp)
	sw	$16,92($sp)
	.cprestore	16
	move	$19,$6
	addiu	$17,$sp,24
	li	$6,8			# 0x8
	move	$7,$19
	move	$18,$4
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$16,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	ori	$6,$2,0xfefe
	addiu	$7,$sp,88
$L1110:
	lwl	$4,3($16)
	lwl	$2,3($17)
	lwr	$4,0($16)
	lwr	$2,0($17)
	lw	$5,0($18)
	xor	$3,$2,$4
	and	$3,$3,$6
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$6
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($18)
	lwl	$3,7($16)
	lwl	$4,7($17)
	lwr	$3,4($16)
	lwr	$4,4($17)
	lw	$5,4($18)
	xor	$2,$4,$3
	and	$2,$2,$6
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$6
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,8
	sw	$4,4($18)
	addu	$16,$16,$19
	bne	$17,$7,$L1110
	addu	$18,$18,$19

	lw	$31,108($sp)
	lw	$19,104($sp)
	lw	$18,100($sp)
	lw	$17,96($sp)
	lw	$16,92($sp)
	j	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc10_c
	.align	2
	.ent	avg_h264_qpel8_mc30_c
	.type	avg_h264_qpel8_mc30_c, @function
avg_h264_qpel8_mc30_c:
	.set	nomips16
	.frame	$sp,112,$31		# vars= 64, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-112
	sw	$31,108($sp)
	sw	$19,104($sp)
	sw	$18,100($sp)
	sw	$17,96($sp)
	sw	$16,92($sp)
	.cprestore	16
	move	$19,$6
	addiu	$17,$sp,24
	li	$6,8			# 0x8
	move	$7,$19
	move	$18,$4
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$16,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	addiu	$16,$16,1
	ori	$6,$2,0xfefe
	addiu	$7,$sp,88
$L1114:
	lwl	$4,3($16)
	lwl	$2,3($17)
	lwr	$4,0($16)
	lwr	$2,0($17)
	lw	$5,0($18)
	xor	$3,$2,$4
	and	$3,$3,$6
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$6
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($18)
	lwl	$3,7($16)
	lwl	$4,7($17)
	lwr	$3,4($16)
	lwr	$4,4($17)
	lw	$5,4($18)
	xor	$2,$4,$3
	and	$2,$2,$6
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$6
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,8
	sw	$4,4($18)
	addu	$16,$16,$19
	bne	$17,$7,$L1114
	addu	$18,$18,$19

	lw	$31,108($sp)
	lw	$19,104($sp)
	lw	$18,100($sp)
	lw	$17,96($sp)
	lw	$16,92($sp)
	j	$31
	addiu	$sp,$sp,112

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc30_c
	.align	2
	.ent	avg_h264_qpel8_mc01_c
	.type	avg_h264_qpel8_mc01_c, @function
avg_h264_qpel8_mc01_c:
	.set	nomips16
	.frame	$sp,216,$31		# vars= 168, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-216
	sw	$31,212($sp)
	sw	$19,208($sp)
	sw	$18,204($sp)
	sw	$17,200($sp)
	sw	$16,196($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$18,$6
	move	$19,$4
	subu	$5,$5,$2
	addiu	$4,$sp,88
	addiu	$6,$sp,192
$L1118:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$6,$L1118
	addu	$5,$5,$18

	addiu	$16,$sp,104
	addiu	$17,$sp,24
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	move	$5,$16

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$6,$19
	ori	$7,$2,0xfefe
	addiu	$8,$sp,168
$L1119:
	lwl	$4,3($16)
	lwl	$2,3($17)
	lwr	$4,0($16)
	lwr	$2,0($17)
	lw	$5,0($6)
	xor	$3,$2,$4
	and	$3,$3,$7
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$7
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($6)
	lwl	$3,7($16)
	lwl	$4,7($17)
	lwr	$3,4($16)
	lwr	$4,4($17)
	lw	$5,4($6)
	xor	$2,$4,$3
	and	$2,$2,$7
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$7
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($6)
	addiu	$17,$17,8
	bne	$16,$8,$L1119
	addu	$6,$6,$18

	lw	$31,212($sp)
	lw	$19,208($sp)
	lw	$18,204($sp)
	lw	$17,200($sp)
	lw	$16,196($sp)
	j	$31
	addiu	$sp,$sp,216

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc01_c
	.align	2
	.ent	avg_h264_qpel8_mc03_c
	.type	avg_h264_qpel8_mc03_c, @function
avg_h264_qpel8_mc03_c:
	.set	nomips16
	.frame	$sp,208,$31		# vars= 168, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-208
	sw	$31,204($sp)
	sw	$18,200($sp)
	sw	$17,196($sp)
	sw	$16,192($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$17,$6
	move	$18,$4
	subu	$5,$5,$2
	addiu	$4,$sp,88
	addiu	$6,$sp,192
$L1124:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$6,$L1124
	addu	$5,$5,$17

	addiu	$16,$sp,24
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$5,$sp,104

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$18
	ori	$8,$2,0xfefe
	addiu	$6,$sp,112
	addiu	$9,$sp,176
$L1125:
	lwl	$4,3($6)
	lwl	$2,3($16)
	lwr	$4,0($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,7($6)
	lwl	$4,7($16)
	lwr	$3,4($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,8
	sw	$4,4($7)
	addiu	$16,$16,8
	bne	$6,$9,$L1125
	addu	$7,$7,$17

	lw	$31,204($sp)
	lw	$18,200($sp)
	lw	$17,196($sp)
	lw	$16,192($sp)
	j	$31
	addiu	$sp,$sp,208

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc03_c
	.align	2
	.ent	avg_h264_qpel8_mc11_c
	.type	avg_h264_qpel8_mc11_c, @function
avg_h264_qpel8_mc11_c:
	.set	nomips16
	.frame	$sp,280,$31		# vars= 232, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-280
	sw	$31,276($sp)
	sw	$19,272($sp)
	sw	$18,268($sp)
	sw	$17,264($sp)
	sw	$16,260($sp)
	.cprestore	16
	move	$17,$6
	move	$19,$4
	li	$6,8			# 0x8
	addiu	$4,$sp,24
	move	$7,$17
	move	$16,$5
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	addiu	$18,$sp,152

	sll	$2,$17,1
	subu	$16,$16,$2
	move	$4,$18
	addiu	$5,$sp,256
$L1130:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$5,$L1130
	addu	$16,$16,$17

	addiu	$16,$sp,88
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$5,$sp,168

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$19
	ori	$8,$2,0xfefe
	addiu	$6,$sp,28
$L1131:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$18,$L1131
	addu	$7,$7,$17

	lw	$31,276($sp)
	lw	$19,272($sp)
	lw	$18,268($sp)
	lw	$17,264($sp)
	lw	$16,260($sp)
	j	$31
	addiu	$sp,$sp,280

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc11_c
	.align	2
	.ent	avg_h264_qpel8_mc31_c
	.type	avg_h264_qpel8_mc31_c, @function
avg_h264_qpel8_mc31_c:
	.set	nomips16
	.frame	$sp,280,$31		# vars= 232, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-280
	sw	$31,276($sp)
	sw	$19,272($sp)
	sw	$18,268($sp)
	sw	$17,264($sp)
	sw	$16,260($sp)
	.cprestore	16
	move	$17,$6
	move	$19,$4
	li	$6,8			# 0x8
	addiu	$4,$sp,24
	move	$7,$17
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$18,$sp,152
	addiu	$16,$16,1
	move	$4,$18
	addiu	$5,$sp,256
$L1136:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$5,$L1136
	addu	$16,$16,$17

	addiu	$16,$sp,88
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$5,$sp,168

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$19
	ori	$8,$2,0xfefe
	addiu	$6,$sp,28
$L1137:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$18,$L1137
	addu	$7,$7,$17

	lw	$31,276($sp)
	lw	$19,272($sp)
	lw	$18,268($sp)
	lw	$17,264($sp)
	lw	$16,260($sp)
	j	$31
	addiu	$sp,$sp,280

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc31_c
	.align	2
	.ent	avg_h264_qpel8_mc13_c
	.type	avg_h264_qpel8_mc13_c, @function
avg_h264_qpel8_mc13_c:
	.set	nomips16
	.frame	$sp,280,$31		# vars= 232, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-280
	sw	$31,276($sp)
	sw	$19,272($sp)
	sw	$18,268($sp)
	sw	$17,264($sp)
	sw	$16,260($sp)
	.cprestore	16
	move	$17,$6
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	addiu	$4,$sp,24
	li	$6,8			# 0x8
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	addiu	$18,$sp,152
	subu	$16,$16,$2
	move	$4,$18
	addiu	$5,$sp,256
$L1142:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$5,$L1142
	addu	$16,$16,$17

	addiu	$16,$sp,88
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$5,$sp,168

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$19
	ori	$8,$2,0xfefe
	addiu	$6,$sp,28
$L1143:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$18,$L1143
	addu	$7,$7,$17

	lw	$31,276($sp)
	lw	$19,272($sp)
	lw	$18,268($sp)
	lw	$17,264($sp)
	lw	$16,260($sp)
	j	$31
	addiu	$sp,$sp,280

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc13_c
	.align	2
	.ent	avg_h264_qpel8_mc33_c
	.type	avg_h264_qpel8_mc33_c, @function
avg_h264_qpel8_mc33_c:
	.set	nomips16
	.frame	$sp,280,$31		# vars= 232, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-280
	sw	$31,276($sp)
	sw	$19,272($sp)
	sw	$18,268($sp)
	sw	$17,264($sp)
	sw	$16,260($sp)
	.cprestore	16
	move	$17,$6
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	addiu	$4,$sp,24
	li	$6,8			# 0x8
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$18,$sp,152
	addiu	$16,$16,1
	move	$4,$18
	addiu	$5,$sp,256
$L1148:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	addiu	$4,$4,8
	bne	$4,$5,$L1148
	addu	$16,$16,$17

	addiu	$16,$sp,88
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$5,$sp,168

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$7,$19
	ori	$8,$2,0xfefe
	addiu	$6,$sp,28
$L1149:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$18,$L1149
	addu	$7,$7,$17

	lw	$31,276($sp)
	lw	$19,272($sp)
	lw	$18,268($sp)
	lw	$17,264($sp)
	lw	$16,260($sp)
	j	$31
	addiu	$sp,$sp,280

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc33_c
	.align	2
	.ent	avg_h264_qpel8_mc21_c
	.type	avg_h264_qpel8_mc21_c, @function
avg_h264_qpel8_mc21_c:
	.set	nomips16
	.frame	$sp,392,$31		# vars= 336, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-392
	sw	$31,388($sp)
	sw	$20,384($sp)
	sw	$19,380($sp)
	sw	$18,376($sp)
	sw	$17,372($sp)
	sw	$16,368($sp)
	.cprestore	24
	move	$19,$6
	move	$16,$5
	li	$6,8			# 0x8
	move	$7,$19
	move	$18,$4
	addiu	$17,$sp,96
	addiu	$4,$sp,32
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	addiu	$20,$sp,160

	li	$2,8			# 0x8
	move	$6,$16
	li	$7,8			# 0x8
	move	$4,$17
	move	$5,$20
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$7,$2,0xfefe
	addiu	$6,$sp,36
$L1154:
	lwl	$4,-1($6)
	lwl	$2,3($17)
	lwr	$4,-4($6)
	lwr	$2,0($17)
	lw	$5,0($18)
	xor	$3,$2,$4
	and	$3,$3,$7
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$7
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($18)
	lwl	$3,3($6)
	lwl	$4,7($17)
	lwr	$3,0($6)
	lwr	$4,4($17)
	lw	$5,4($18)
	xor	$2,$4,$3
	and	$2,$2,$7
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$7
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,8
	sw	$4,4($18)
	addiu	$6,$6,8
	bne	$17,$20,$L1154
	addu	$18,$18,$19

	lw	$31,388($sp)
	lw	$20,384($sp)
	lw	$19,380($sp)
	lw	$18,376($sp)
	lw	$17,372($sp)
	lw	$16,368($sp)
	j	$31
	addiu	$sp,$sp,392

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc21_c
	.align	2
	.ent	avg_h264_qpel8_mc23_c
	.type	avg_h264_qpel8_mc23_c, @function
avg_h264_qpel8_mc23_c:
	.set	nomips16
	.frame	$sp,392,$31		# vars= 336, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-392
	sw	$31,388($sp)
	sw	$20,384($sp)
	sw	$19,380($sp)
	sw	$18,376($sp)
	sw	$17,372($sp)
	sw	$16,368($sp)
	.cprestore	24
	move	$19,$6
	move	$16,$5
	move	$7,$19
	addu	$5,$5,$6
	move	$18,$4
	li	$6,8			# 0x8
	addiu	$4,$sp,32
	addiu	$17,$sp,96
	.option	pic0
	jal	put_h264_qpel8_h_lowpass
	.option	pic2
	addiu	$20,$sp,160

	li	$2,8			# 0x8
	move	$6,$16
	li	$7,8			# 0x8
	move	$4,$17
	move	$5,$20
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$7,$2,0xfefe
	addiu	$6,$sp,36
$L1158:
	lwl	$4,-1($6)
	lwl	$2,3($17)
	lwr	$4,-4($6)
	lwr	$2,0($17)
	lw	$5,0($18)
	xor	$3,$2,$4
	and	$3,$3,$7
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$7
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($18)
	lwl	$3,3($6)
	lwl	$4,7($17)
	lwr	$3,0($6)
	lwr	$4,4($17)
	lw	$5,4($18)
	xor	$2,$4,$3
	and	$2,$2,$7
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$7
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,8
	sw	$4,4($18)
	addiu	$6,$6,8
	bne	$17,$20,$L1158
	addu	$18,$18,$19

	lw	$31,388($sp)
	lw	$20,384($sp)
	lw	$19,380($sp)
	lw	$18,376($sp)
	lw	$17,372($sp)
	lw	$16,368($sp)
	j	$31
	addiu	$sp,$sp,392

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc23_c
	.align	2
	.ent	avg_h264_qpel8_mc12_c
	.type	avg_h264_qpel8_mc12_c, @function
avg_h264_qpel8_mc12_c:
	.set	nomips16
	.frame	$sp,504,$31		# vars= 440, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-504
	sw	$31,500($sp)
	sw	$21,496($sp)
	sw	$20,492($sp)
	sw	$19,488($sp)
	sw	$18,484($sp)
	sw	$17,480($sp)
	sw	$16,476($sp)
	.cprestore	24
	sll	$2,$6,1
	addiu	$19,$sp,160
	move	$20,$5
	move	$21,$4
	move	$18,$6
	subu	$4,$5,$2
	move	$17,$19
	addiu	$5,$sp,264
$L1162:
	lwl	$2,3($4)
	lwr	$2,0($4)
	swl	$2,3($17)
	swr	$2,0($17)
	lwl	$3,7($4)
	lwr	$3,4($4)
	swl	$3,7($17)
	swr	$3,4($17)
	addiu	$17,$17,8
	bne	$17,$5,$L1162
	addu	$4,$4,$18

	addiu	$4,$sp,32
	addiu	$5,$sp,176
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$16,$sp,96

	li	$2,8			# 0x8
	move	$6,$20
	li	$7,8			# 0x8
	move	$5,$17
	move	$4,$16
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$7,$21
	ori	$8,$2,0xfefe
	addiu	$6,$sp,36
$L1163:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$19,$L1163
	addu	$7,$7,$18

	lw	$31,500($sp)
	lw	$21,496($sp)
	lw	$20,492($sp)
	lw	$19,488($sp)
	lw	$18,484($sp)
	lw	$17,480($sp)
	lw	$16,476($sp)
	j	$31
	addiu	$sp,$sp,504

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc12_c
	.align	2
	.ent	avg_h264_qpel8_mc32_c
	.type	avg_h264_qpel8_mc32_c, @function
avg_h264_qpel8_mc32_c:
	.set	nomips16
	.frame	$sp,504,$31		# vars= 440, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-504
	sw	$31,500($sp)
	sw	$21,496($sp)
	sw	$20,492($sp)
	sw	$19,488($sp)
	sw	$18,484($sp)
	sw	$17,480($sp)
	sw	$16,476($sp)
	.cprestore	24
	sll	$2,$6,1
	subu	$2,$5,$2
	addiu	$19,$sp,160
	move	$20,$5
	move	$21,$4
	move	$18,$6
	addiu	$4,$2,1
	move	$17,$19
	addiu	$5,$sp,264
$L1168:
	lwl	$2,3($4)
	lwr	$2,0($4)
	swl	$2,3($17)
	swr	$2,0($17)
	lwl	$3,7($4)
	lwr	$3,4($4)
	swl	$3,7($17)
	swr	$3,4($17)
	addiu	$17,$17,8
	bne	$17,$5,$L1168
	addu	$4,$4,$18

	addiu	$4,$sp,32
	addiu	$5,$sp,176
	li	$6,8			# 0x8
	li	$7,8			# 0x8
	.option	pic0
	jal	put_h264_qpel8_v_lowpass
	.option	pic2
	addiu	$16,$sp,96

	li	$2,8			# 0x8
	move	$6,$20
	li	$7,8			# 0x8
	move	$5,$17
	move	$4,$16
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel8_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$7,$21
	ori	$8,$2,0xfefe
	addiu	$6,$sp,36
$L1169:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,8
	sw	$4,4($7)
	addiu	$6,$6,8
	bne	$16,$19,$L1169
	addu	$7,$7,$18

	lw	$31,500($sp)
	lw	$21,496($sp)
	lw	$20,492($sp)
	lw	$19,488($sp)
	lw	$18,484($sp)
	lw	$17,480($sp)
	lw	$16,476($sp)
	j	$31
	addiu	$sp,$sp,504

	.set	macro
	.set	reorder
	.end	avg_h264_qpel8_mc32_c
	.align	2
	.ent	avg_h264_qpel16_mc10_c
	.type	avg_h264_qpel16_mc10_c, @function
avg_h264_qpel16_mc10_c:
	.set	nomips16
	.frame	$sp,304,$31		# vars= 256, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-304
	sw	$31,300($sp)
	sw	$19,296($sp)
	sw	$18,292($sp)
	sw	$17,288($sp)
	sw	$16,284($sp)
	.cprestore	16
	move	$18,$6
	addiu	$16,$sp,24
	move	$17,$4
	li	$6,16			# 0x10
	move	$7,$18
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	move	$19,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	ori	$8,$2,0xfefe
	move	$6,$19
	move	$7,$17
	addiu	$9,$sp,280
$L1174:
	lwl	$4,3($6)
	lwl	$2,3($16)
	lwr	$4,0($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,7($6)
	lwl	$4,7($16)
	lwr	$3,4($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addu	$6,$6,$18
	bne	$16,$9,$L1174
	addu	$7,$7,$18

	li	$2,-16908288			# 0xfffffffffefe0000
	addiu	$7,$19,8
	ori	$8,$2,0xfefe
	addiu	$6,$sp,32
	addiu	$9,$sp,288
$L1175:
	lwl	$4,3($7)
	lwl	$2,3($6)
	lwr	$4,0($7)
	lwr	$2,0($6)
	lw	$5,8($17)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($17)
	lwl	$3,7($7)
	lwl	$4,7($6)
	lwr	$3,4($7)
	lwr	$4,4($6)
	lw	$5,12($17)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($17)
	addu	$7,$7,$18
	bne	$6,$9,$L1175
	addu	$17,$17,$18

	lw	$31,300($sp)
	lw	$19,296($sp)
	lw	$18,292($sp)
	lw	$17,288($sp)
	lw	$16,284($sp)
	j	$31
	addiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc10_c
	.align	2
	.ent	avg_h264_qpel16_mc30_c
	.type	avg_h264_qpel16_mc30_c, @function
avg_h264_qpel16_mc30_c:
	.set	nomips16
	.frame	$sp,304,$31		# vars= 256, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-304
	sw	$31,300($sp)
	sw	$19,296($sp)
	sw	$18,292($sp)
	sw	$17,288($sp)
	sw	$16,284($sp)
	.cprestore	16
	move	$18,$6
	addiu	$16,$sp,24
	move	$17,$4
	li	$6,16			# 0x10
	move	$7,$18
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	move	$19,$5

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	ori	$8,$2,0xfefe
	addiu	$6,$19,1
	move	$7,$17
	addiu	$9,$sp,280
$L1180:
	lwl	$4,3($6)
	lwl	$2,3($16)
	lwr	$4,0($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,7($6)
	lwl	$4,7($16)
	lwr	$3,4($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addu	$6,$6,$18
	bne	$16,$9,$L1180
	addu	$7,$7,$18

	li	$2,-16908288			# 0xfffffffffefe0000
	addiu	$7,$19,9
	ori	$8,$2,0xfefe
	addiu	$6,$sp,32
	addiu	$9,$sp,288
$L1181:
	lwl	$4,3($7)
	lwl	$2,3($6)
	lwr	$4,0($7)
	lwr	$2,0($6)
	lw	$5,8($17)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($17)
	lwl	$3,7($7)
	lwl	$4,7($6)
	lwr	$3,4($7)
	lwr	$4,4($6)
	lw	$5,12($17)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($17)
	addu	$7,$7,$18
	bne	$6,$9,$L1181
	addu	$17,$17,$18

	lw	$31,300($sp)
	lw	$19,296($sp)
	lw	$18,292($sp)
	lw	$17,288($sp)
	lw	$16,284($sp)
	j	$31
	addiu	$sp,$sp,304

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc30_c
	.align	2
	.ent	avg_h264_qpel16_mc11_c
	.type	avg_h264_qpel16_mc11_c, @function
avg_h264_qpel16_mc11_c:
	.set	nomips16
	.frame	$sp,896,$31		# vars= 848, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-896
	sw	$31,892($sp)
	sw	$19,888($sp)
	sw	$18,884($sp)
	sw	$17,880($sp)
	sw	$16,876($sp)
	.cprestore	16
	move	$17,$6
	move	$19,$4
	li	$6,16			# 0x10
	addiu	$4,$sp,24
	move	$7,$17
	move	$16,$5
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	addiu	$18,$sp,536

	sll	$2,$17,1
	subu	$16,$16,$2
	move	$4,$18
	addiu	$5,$sp,872
$L1186:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($16)
	lwr	$2,8($16)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($16)
	lwr	$3,12($16)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$5,$L1186
	addu	$16,$16,$17

	addiu	$16,$sp,280
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$5,$sp,568

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	addiu	$6,$sp,28
	move	$7,$19
$L1187:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$18,$L1187
	addu	$7,$7,$17

	addiu	$10,$sp,288
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,32
	move	$7,$10
$L1188:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1188
	addu	$8,$8,$17

	lw	$31,892($sp)
	lw	$19,888($sp)
	lw	$18,884($sp)
	lw	$17,880($sp)
	lw	$16,876($sp)
	j	$31
	addiu	$sp,$sp,896

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc11_c
	.align	2
	.ent	avg_h264_qpel16_mc31_c
	.type	avg_h264_qpel16_mc31_c, @function
avg_h264_qpel16_mc31_c:
	.set	nomips16
	.frame	$sp,896,$31		# vars= 848, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-896
	sw	$31,892($sp)
	sw	$19,888($sp)
	sw	$18,884($sp)
	sw	$17,880($sp)
	sw	$16,876($sp)
	.cprestore	16
	move	$17,$6
	move	$19,$4
	li	$6,16			# 0x10
	addiu	$4,$sp,24
	move	$7,$17
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	move	$16,$5

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$18,$sp,536
	addiu	$16,$16,1
	move	$4,$18
	addiu	$5,$sp,872
$L1194:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($16)
	lwr	$2,8($16)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($16)
	lwr	$3,12($16)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$5,$L1194
	addu	$16,$16,$17

	addiu	$16,$sp,280
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$5,$sp,568

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	addiu	$6,$sp,28
	move	$7,$19
$L1195:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$18,$L1195
	addu	$7,$7,$17

	addiu	$10,$sp,288
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,32
	move	$7,$10
$L1196:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1196
	addu	$8,$8,$17

	lw	$31,892($sp)
	lw	$19,888($sp)
	lw	$18,884($sp)
	lw	$17,880($sp)
	lw	$16,876($sp)
	j	$31
	addiu	$sp,$sp,896

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc31_c
	.align	2
	.ent	avg_h264_qpel16_mc01_c
	.type	avg_h264_qpel16_mc01_c, @function
avg_h264_qpel16_mc01_c:
	.set	nomips16
	.frame	$sp,640,$31		# vars= 592, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-640
	sw	$31,636($sp)
	sw	$19,632($sp)
	sw	$18,628($sp)
	sw	$17,624($sp)
	sw	$16,620($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$18,$6
	move	$19,$4
	subu	$5,$5,$2
	addiu	$4,$sp,280
	addiu	$6,$sp,616
$L1202:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($5)
	lwr	$2,8($5)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($5)
	lwr	$3,12($5)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$6,$L1202
	addu	$5,$5,$18

	addiu	$16,$sp,312
	addiu	$17,$sp,24
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$17
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	move	$5,$16

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$7,$2,0xfefe
	move	$6,$19
	addiu	$9,$sp,568
$L1203:
	lwl	$4,3($16)
	lwl	$2,3($17)
	lwr	$4,0($16)
	lwr	$2,0($17)
	lw	$5,0($6)
	xor	$3,$2,$4
	and	$3,$3,$7
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$7
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($6)
	lwl	$3,7($16)
	lwl	$4,7($17)
	lwr	$3,4($16)
	lwr	$4,4($17)
	lw	$5,4($6)
	xor	$2,$4,$3
	and	$2,$2,$7
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$7
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($6)
	addiu	$17,$17,16
	bne	$16,$9,$L1203
	addu	$6,$6,$18

	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,320
	addiu	$7,$sp,32
	addiu	$10,$sp,576
$L1204:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1204
	addu	$8,$8,$18

	lw	$31,636($sp)
	lw	$19,632($sp)
	lw	$18,628($sp)
	lw	$17,624($sp)
	lw	$16,620($sp)
	j	$31
	addiu	$sp,$sp,640

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc01_c
	.align	2
	.ent	avg_h264_qpel16_mc03_c
	.type	avg_h264_qpel16_mc03_c, @function
avg_h264_qpel16_mc03_c:
	.set	nomips16
	.frame	$sp,632,$31		# vars= 592, regs= 4/0, args= 16, gp= 8
	.mask	0x80070000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-632
	sw	$31,628($sp)
	sw	$18,624($sp)
	sw	$17,620($sp)
	sw	$16,616($sp)
	.cprestore	16
	sll	$2,$6,1
	move	$17,$6
	move	$18,$4
	subu	$5,$5,$2
	addiu	$4,$sp,280
	addiu	$6,$sp,616
$L1210:
	lwl	$2,3($5)
	lwr	$2,0($5)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($5)
	lwr	$3,4($5)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($5)
	lwr	$2,8($5)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($5)
	lwr	$3,12($5)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$6,$L1210
	addu	$5,$5,$17

	addiu	$16,$sp,24
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$5,$sp,312

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$18
	ori	$9,$2,0xfefe
	addiu	$6,$sp,328
	move	$7,$18
	addiu	$10,$sp,584
$L1211:
	lwl	$4,3($6)
	lwl	$2,3($16)
	lwr	$4,0($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,7($6)
	lwl	$4,7($16)
	lwr	$3,4($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,4($7)
	addiu	$16,$16,16
	bne	$6,$10,$L1211
	addu	$7,$7,$17

	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,336
	addiu	$7,$sp,32
	addiu	$10,$sp,592
$L1212:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1212
	addu	$8,$8,$17

	lw	$31,628($sp)
	lw	$18,624($sp)
	lw	$17,620($sp)
	lw	$16,616($sp)
	j	$31
	addiu	$sp,$sp,632

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc03_c
	.align	2
	.ent	avg_h264_qpel16_mc21_c
	.type	avg_h264_qpel16_mc21_c, @function
avg_h264_qpel16_mc21_c:
	.set	nomips16
	.frame	$sp,1240,$31		# vars= 1184, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-1240
	sw	$31,1236($sp)
	sw	$20,1232($sp)
	sw	$19,1228($sp)
	sw	$18,1224($sp)
	sw	$17,1220($sp)
	sw	$16,1216($sp)
	.cprestore	24
	move	$19,$6
	move	$16,$5
	move	$18,$4
	li	$6,16			# 0x10
	addiu	$4,$sp,32
	move	$7,$19
	addiu	$17,$sp,288
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	addiu	$20,$sp,544

	li	$2,16			# 0x10
	move	$6,$16
	li	$7,16			# 0x10
	move	$4,$17
	move	$5,$20
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$8,$2,0xfefe
	addiu	$6,$sp,36
	move	$7,$18
$L1218:
	lwl	$4,-1($6)
	lwl	$2,3($17)
	lwr	$4,-4($6)
	lwr	$2,0($17)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($17)
	lwr	$3,0($6)
	lwr	$4,4($17)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$17,$20,$L1218
	addu	$7,$7,$19

	addiu	$9,$sp,296
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$8,$2,0xfefe
	addiu	$6,$sp,40
	move	$7,$9
$L1219:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($18)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($18)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($18)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($18)
	addiu	$7,$7,16
	bne	$6,$9,$L1219
	addu	$18,$18,$19

	lw	$31,1236($sp)
	lw	$20,1232($sp)
	lw	$19,1228($sp)
	lw	$18,1224($sp)
	lw	$17,1220($sp)
	lw	$16,1216($sp)
	j	$31
	addiu	$sp,$sp,1240

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc21_c
	.align	2
	.ent	avg_h264_qpel16_mc23_c
	.type	avg_h264_qpel16_mc23_c, @function
avg_h264_qpel16_mc23_c:
	.set	nomips16
	.frame	$sp,1240,$31		# vars= 1184, regs= 6/0, args= 24, gp= 8
	.mask	0x801f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-1240
	sw	$31,1236($sp)
	sw	$20,1232($sp)
	sw	$19,1228($sp)
	sw	$18,1224($sp)
	sw	$17,1220($sp)
	sw	$16,1216($sp)
	.cprestore	24
	move	$19,$6
	move	$16,$5
	move	$18,$4
	addu	$5,$5,$6
	addiu	$4,$sp,32
	li	$6,16			# 0x10
	move	$7,$19
	addiu	$17,$sp,288
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	addiu	$20,$sp,544

	li	$2,16			# 0x10
	move	$6,$16
	li	$7,16			# 0x10
	move	$4,$17
	move	$5,$20
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass
	.option	pic2
	sw	$19,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	ori	$8,$2,0xfefe
	addiu	$6,$sp,36
	move	$7,$18
$L1224:
	lwl	$4,-1($6)
	lwl	$2,3($17)
	lwr	$4,-4($6)
	lwr	$2,0($17)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($17)
	lwr	$3,0($6)
	lwr	$4,4($17)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$17,$17,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$17,$20,$L1224
	addu	$7,$7,$19

	addiu	$9,$sp,296
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$8,$2,0xfefe
	addiu	$6,$sp,40
	move	$7,$9
$L1225:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($18)
	xor	$3,$2,$4
	and	$3,$3,$8
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$8
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($18)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($18)
	xor	$2,$4,$3
	and	$2,$2,$8
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$8
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($18)
	addiu	$7,$7,16
	bne	$6,$9,$L1225
	addu	$18,$18,$19

	lw	$31,1236($sp)
	lw	$20,1232($sp)
	lw	$19,1228($sp)
	lw	$18,1224($sp)
	lw	$17,1220($sp)
	lw	$16,1216($sp)
	j	$31
	addiu	$sp,$sp,1240

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc23_c
	.align	2
	.ent	avg_h264_qpel16_mc13_c
	.type	avg_h264_qpel16_mc13_c, @function
avg_h264_qpel16_mc13_c:
	.set	nomips16
	.frame	$sp,896,$31		# vars= 848, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-896
	sw	$31,892($sp)
	sw	$19,888($sp)
	sw	$18,884($sp)
	sw	$17,880($sp)
	sw	$16,876($sp)
	.cprestore	16
	move	$17,$6
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	addiu	$4,$sp,24
	li	$6,16			# 0x10
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	addiu	$18,$sp,536
	subu	$16,$16,$2
	move	$4,$18
	addiu	$5,$sp,872
$L1230:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($16)
	lwr	$2,8($16)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($16)
	lwr	$3,12($16)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$5,$L1230
	addu	$16,$16,$17

	addiu	$16,$sp,280
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$5,$sp,568

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	addiu	$6,$sp,28
	move	$7,$19
$L1231:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$18,$L1231
	addu	$7,$7,$17

	addiu	$10,$sp,288
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,32
	move	$7,$10
$L1232:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1232
	addu	$8,$8,$17

	lw	$31,892($sp)
	lw	$19,888($sp)
	lw	$18,884($sp)
	lw	$17,880($sp)
	lw	$16,876($sp)
	j	$31
	addiu	$sp,$sp,896

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc13_c
	.align	2
	.ent	avg_h264_qpel16_mc33_c
	.type	avg_h264_qpel16_mc33_c, @function
avg_h264_qpel16_mc33_c:
	.set	nomips16
	.frame	$sp,896,$31		# vars= 848, regs= 5/0, args= 16, gp= 8
	.mask	0x800f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-896
	sw	$31,892($sp)
	sw	$19,888($sp)
	sw	$18,884($sp)
	sw	$17,880($sp)
	sw	$16,876($sp)
	.cprestore	16
	move	$17,$6
	move	$16,$5
	move	$19,$4
	addu	$5,$5,$6
	addiu	$4,$sp,24
	li	$6,16			# 0x10
	.option	pic0
	jal	put_h264_qpel16_h_lowpass
	.option	pic2
	move	$7,$17

	sll	$2,$17,1
	subu	$16,$16,$2
	addiu	$18,$sp,536
	addiu	$16,$16,1
	move	$4,$18
	addiu	$5,$sp,872
$L1238:
	lwl	$2,3($16)
	lwr	$2,0($16)
	swl	$2,3($4)
	swr	$2,0($4)
	lwl	$3,7($16)
	lwr	$3,4($16)
	swl	$3,7($4)
	swr	$3,4($4)
	lwl	$2,11($16)
	lwr	$2,8($16)
	swl	$2,11($4)
	swr	$2,8($4)
	lwl	$3,15($16)
	lwr	$3,12($16)
	swl	$3,15($4)
	swr	$3,12($4)
	addiu	$4,$4,16
	bne	$4,$5,$L1238
	addu	$16,$16,$17

	addiu	$16,$sp,280
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	move	$4,$16
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$5,$sp,568

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,16($sp)
	move	$8,$19
	ori	$9,$2,0xfefe
	addiu	$6,$sp,28
	move	$7,$19
$L1239:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$18,$L1239
	addu	$7,$7,$17

	addiu	$10,$sp,288
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,32
	move	$7,$10
$L1240:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1240
	addu	$8,$8,$17

	lw	$31,892($sp)
	lw	$19,888($sp)
	lw	$18,884($sp)
	lw	$17,880($sp)
	lw	$16,876($sp)
	j	$31
	addiu	$sp,$sp,896

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc33_c
	.align	2
	.ent	avg_h264_qpel16_mc12_c
	.type	avg_h264_qpel16_mc12_c, @function
avg_h264_qpel16_mc12_c:
	.set	nomips16
	.frame	$sp,1584,$31		# vars= 1520, regs= 7/0, args= 24, gp= 8
	.mask	0x803f0000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	addiu	$sp,$sp,-1584
	sw	$31,1580($sp)
	sw	$21,1576($sp)
	sw	$20,1572($sp)
	sw	$19,1568($sp)
	sw	$18,1564($sp)
	sw	$17,1560($sp)
	sw	$16,1556($sp)
	.cprestore	24
	sll	$2,$6,1
	addiu	$19,$sp,544
	move	$20,$5
	move	$21,$4
	move	$18,$6
	subu	$4,$5,$2
	move	$17,$19
	addiu	$5,$sp,880
$L1246:
	lwl	$2,3($4)
	lwr	$2,0($4)
	swl	$2,3($17)
	swr	$2,0($17)
	lwl	$3,7($4)
	lwr	$3,4($4)
	swl	$3,7($17)
	swr	$3,4($17)
	lwl	$2,11($4)
	lwr	$2,8($4)
	swl	$2,11($17)
	swr	$2,8($17)
	lwl	$3,15($4)
	lwr	$3,12($4)
	swl	$3,15($17)
	swr	$3,12($17)
	addiu	$17,$17,16
	bne	$17,$5,$L1246
	addu	$4,$4,$18

	addiu	$4,$sp,32
	addiu	$5,$sp,576
	li	$6,16			# 0x10
	li	$7,16			# 0x10
	.option	pic0
	jal	put_h264_qpel16_v_lowpass
	.option	pic2
	addiu	$16,$sp,288

	li	$2,16			# 0x10
	move	$6,$20
	li	$7,16			# 0x10
	move	$5,$17
	move	$4,$16
	sw	$2,16($sp)
	.option	pic0
	jal	put_h264_qpel16_hv_lowpass
	.option	pic2
	sw	$18,20($sp)

	li	$2,-16908288			# 0xfffffffffefe0000
	lw	$28,24($sp)
	move	$8,$21
	ori	$9,$2,0xfefe
	addiu	$6,$sp,36
	move	$7,$21
$L1247:
	lwl	$4,-1($6)
	lwl	$2,3($16)
	lwr	$4,-4($6)
	lwr	$2,0($16)
	lw	$5,0($7)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,0($7)
	lwl	$3,3($6)
	lwl	$4,7($16)
	lwr	$3,0($6)
	lwr	$4,4($16)
	lw	$5,4($7)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$16,$16,16
	sw	$4,4($7)
	addiu	$6,$6,16
	bne	$16,$19,$L1247
	addu	$7,$7,$18

	addiu	$10,$sp,296
	li	$2,-16908288			# 0xfffffffffefe0000
	ori	$9,$2,0xfefe
	addiu	$6,$sp,40
	move	$7,$10
$L1248:
	lwl	$4,3($6)
	lwl	$2,3($7)
	lwr	$4,0($6)
	lwr	$2,0($7)
	lw	$5,8($8)
	xor	$3,$2,$4
	and	$3,$3,$9
	srl	$3,$3,1
	or	$2,$2,$4
	subu	$2,$2,$3
	xor	$4,$2,$5
	and	$4,$4,$9
	srl	$4,$4,1
	or	$2,$2,$5
	subu	$2,$2,$4
	sw	$2,8($8)
	lwl	$3,7($6)
	lwl	$4,7($7)
	lwr	$3,4($6)
	lwr	$4,4($7)
	lw	$5,12($8)
	xor	$2,$4,$3
	and	$2,$2,$9
	or	$4,$4,$3
	srl	$2,$2,1
	subu	$4,$4,$2
	xor	$3,$4,$5
	and	$3,$3,$9
	srl	$3,$3,1
	or	$4,$4,$5
	subu	$4,$4,$3
	addiu	$6,$6,16
	sw	$4,12($8)
	addiu	$7,$7,16
	bne	$6,$10,$L1248
	addu	$8,$8,$18

	lw	$31,1580($sp)
	lw	$21,1576($sp)
	lw	$20,1572($sp)
	lw	$19,1568($sp)
	lw	$18,1564($sp)
	lw	$17,1560($sp)
	lw	$16,1556($sp)
	j	$31
	addiu	$sp,$sp,1584

	.set	macro
	.set	reorder
	.end	avg_h264_qpel16_mc12_c
	.ident	"GCC: (GNU) 4.3.3"
