	.file	1 "vc1dsp.c"
	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 3
	.abicalls
	.text
	.align	2
	.ent	vc1_v_overlap_c
	.type	vc1_v_overlap_c, @function
vc1_v_overlap_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	sll	$2,$5,1
	move	$9,$4
	subu	$13,$4,$2
	addu	$12,$4,$5
	subu	$11,$4,$5
	move	$14,$0
	li	$10,1			# 0x1
	li	$24,4			# 0x4
	li	$15,8			# 0x8
$L2:
	lbu	$6,0($13)
	lbu	$8,0($12)
	lbu	$7,0($9)
	lbu	$5,0($11)
	subu	$2,$6,$8
	subu	$3,$2,$7
	addu	$3,$3,$5
	subu	$4,$24,$10
	addiu	$2,$2,3
	addu	$2,$2,$10
	addu	$3,$3,$4
	sra	$2,$2,3
	sra	$3,$3,3
	andi	$2,$2,0x00ff
	andi	$3,$3,0x00ff
	addu	$7,$3,$7
	addu	$8,$2,$8
	subu	$6,$6,$2
	subu	$5,$5,$3
	addiu	$14,$14,1
	sb	$6,0($13)
	sltu	$10,$10,1
	sb	$5,0($11)
	addiu	$13,$13,1
	sb	$7,0($9)
	addiu	$11,$11,1
	sb	$8,0($12)
	addiu	$9,$9,1
	bne	$14,$15,$L2
	addiu	$12,$12,1

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	vc1_v_overlap_c
	.align	2
	.ent	vc1_h_overlap_c
	.type	vc1_h_overlap_c, @function
vc1_h_overlap_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	move	$9,$4
	move	$14,$5
	move	$11,$0
	li	$10,1			# 0x1
	li	$13,4			# 0x4
	li	$12,8			# 0x8
$L7:
	lbu	$6,-2($9)
	lbu	$8,1($9)
	lbu	$7,0($9)
	lbu	$5,-1($9)
	subu	$2,$6,$8
	subu	$3,$2,$7
	addu	$3,$3,$5
	subu	$4,$13,$10
	addiu	$2,$2,3
	addu	$2,$2,$10
	addu	$3,$3,$4
	sra	$2,$2,3
	sra	$3,$3,3
	andi	$2,$2,0x00ff
	andi	$3,$3,0x00ff
	addu	$7,$3,$7
	addu	$8,$2,$8
	subu	$6,$6,$2
	subu	$5,$5,$3
	addiu	$11,$11,1
	sb	$6,-2($9)
	sb	$5,-1($9)
	sb	$7,0($9)
	sb	$8,1($9)
	sltu	$10,$10,1
	bne	$11,$12,$L7
	addu	$9,$9,$14

	j	$31
	nop

	.set	macro
	.set	reorder
	.end	vc1_h_overlap_c
	.align	2
	.ent	vc1_inv_trans_8x8_c
	.type	vc1_inv_trans_8x8_c, @function
vc1_inv_trans_8x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	li	$2,786432			# 0xc0000
	ori	$2,$2,0xc
#APP
 # 103 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1048576			# 0x100000
	ori	$3,$3,0x6
#APP
 # 104 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0xf
#APP
 # 105 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,589824			# 0x90000
	ori	$3,$3,0x4
#APP
 # 106 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	move	$3,$0
	move	$2,$4
	li	$6,4			# 0x4
	li	$5,8			# 0x8
$L11:
#APP
 # 109 "vc1dsp.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 110 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 111 "vc1dsp.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
 # 112 "vc1dsp.c" 1
	S32LDD xr4,$2,12
 # 0 "" 2
 # 113 "vc1dsp.c" 1
	D16MUL xr5,xr1,xr15,xr6,LW
 # 0 "" 2
 # 114 "vc1dsp.c" 1
	D16MAC xr5,xr3,xr15,xr6,AS,LW
 # 0 "" 2
 # 115 "vc1dsp.c" 1
	D16MUL xr7,xr2,xr14,xr8,LW
 # 0 "" 2
 # 116 "vc1dsp.c" 1
	D16MAC xr8,xr4,xr14,xr7,SA,LW
 # 0 "" 2
 # 118 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr7,xr7,AS
 # 0 "" 2
 # 119 "vc1dsp.c" 1
	D32ADD xr6,xr6,xr8,xr8,AS
 # 0 "" 2
 # 120 "vc1dsp.c" 1
	S32I2M xr9,$6
 # 0 "" 2
 # 121 "vc1dsp.c" 1
	D32ACC xr5,xr9,xr0,xr7,AS
 # 0 "" 2
 # 122 "vc1dsp.c" 1
	D32ACC xr6,xr9,xr0,xr8,AS
 # 0 "" 2
 # 123 "vc1dsp.c" 1
	D16MUL xr9,xr1,xr13,xr10,HW
 # 0 "" 2
 # 124 "vc1dsp.c" 1
	D16MUL xr11,xr1,xr12,xr1,HW
 # 0 "" 2
 # 125 "vc1dsp.c" 1
	D16MAC xr11,xr2,xr13,xr9,SA,HW
 # 0 "" 2
 # 126 "vc1dsp.c" 1
	D16MAC xr1,xr2,xr12,xr10,SS,HW
 # 0 "" 2
 # 128 "vc1dsp.c" 1
	D16MAC xr10,xr3,xr13,xr1,SA,HW
 # 0 "" 2
 # 129 "vc1dsp.c" 1
	D16MAC xr9,xr3,xr12,xr11,AA,HW
 # 0 "" 2
 # 131 "vc1dsp.c" 1
	D16MAC xr1,xr4,xr13,xr11,SA,HW
 # 0 "" 2
 # 132 "vc1dsp.c" 1
	D16MAC xr10,xr4,xr12,xr9,SA,HW
 # 0 "" 2
 # 133 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr9,xr9,AS
 # 0 "" 2
 # 134 "vc1dsp.c" 1
	D32ADD xr6,xr6,xr10,xr10,AS
 # 0 "" 2
 # 135 "vc1dsp.c" 1
	D32ADD xr8,xr8,xr11,xr11,AS
 # 0 "" 2
 # 136 "vc1dsp.c" 1
	D32ADD xr7,xr7,xr1,xr1,AS
 # 0 "" 2
 # 137 "vc1dsp.c" 1
	D32SARL xr5,xr6,xr5,3
 # 0 "" 2
 # 138 "vc1dsp.c" 1
	D32SARL xr6,xr7,xr8,3
 # 0 "" 2
 # 139 "vc1dsp.c" 1
	D32SARL xr7,xr11,xr1,3
 # 0 "" 2
 # 140 "vc1dsp.c" 1
	D32SARL xr8,xr9,xr10,3
 # 0 "" 2
 # 141 "vc1dsp.c" 1
	S32STD xr5,$2,0
 # 0 "" 2
 # 142 "vc1dsp.c" 1
	S32STD xr6,$2,4
 # 0 "" 2
 # 143 "vc1dsp.c" 1
	S32STD xr7,$2,8
 # 0 "" 2
 # 144 "vc1dsp.c" 1
	S32STD xr8,$2,12
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L11
	addiu	$2,$2,16
	.set	macro
	.set	reorder

	li	$2,4194304			# 0x400000
	li	$3,4259840			# 0x410000
	ori	$2,$2,0x40
	ori	$3,$3,0x41
	move	$5,$0
	li	$6,4			# 0x4
$L12:
#APP
 # 152 "vc1dsp.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 153 "vc1dsp.c" 1
	S32LDD xr2,$4,16
 # 0 "" 2
 # 154 "vc1dsp.c" 1
	S32LDD xr3,$4,32
 # 0 "" 2
 # 155 "vc1dsp.c" 1
	S32LDD xr4,$4,48
 # 0 "" 2
 # 156 "vc1dsp.c" 1
	S32LDD xr5,$4,64
 # 0 "" 2
 # 157 "vc1dsp.c" 1
	S32LDD xr6,$4,80
 # 0 "" 2
 # 158 "vc1dsp.c" 1
	S32LDD xr7,$4,96
 # 0 "" 2
 # 159 "vc1dsp.c" 1
	S32LDD xr8,$4,112
 # 0 "" 2
 # 161 "vc1dsp.c" 1
	Q16ADD xr9,xr1,xr5,xr10,AS,WW
 # 0 "" 2
 # 162 "vc1dsp.c" 1
	Q16SLL xr11,xr9,xr10,xr12,3
 # 0 "" 2
 # 163 "vc1dsp.c" 1
	Q16SLL xr13,xr9,xr10,xr14,2
 # 0 "" 2
 # 164 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr13,xr0,AS,WW
 # 0 "" 2
 # 165 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr14,xr0,AS,WW
 # 0 "" 2
 # 166 "vc1dsp.c" 1
	Q16SLL xr9,xr3,xr7,xr10,4
 # 0 "" 2
 # 167 "vc1dsp.c" 1
	Q16SLL xr13,xr3,xr7,xr14,3
 # 0 "" 2
 # 168 "vc1dsp.c" 1
	Q16SLL xr15,xr3,xr7,xr1,1
 # 0 "" 2
 # 170 "vc1dsp.c" 1
	Q16ADD xr9,xr9,xr14,xr0,AS,WW
 # 0 "" 2
 # 171 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AS,WW
 # 0 "" 2
 # 172 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr15,xr13,AS,WW
 # 0 "" 2
 # 173 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr10,xr13,AS,WW
 # 0 "" 2
 # 174 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr9,xr9,AS,WW
 # 0 "" 2
 # 175 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr13,xr13,AS,WW
 # 0 "" 2
 # 176 "vc1dsp.c" 1
	Q16ADD xr1,xr6,xr4,xr3,AS,WW
 # 0 "" 2
 # 177 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr4,xr14,4
 # 0 "" 2
 # 178 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr8,xr5,4
 # 0 "" 2
 # 181 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr4,xr14,4
 # 0 "" 2
 # 182 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr0,xr0,3
 # 0 "" 2
 # 183 "vc1dsp.c" 1
	Q16SLL xr5,xr8,xr0,xr0,2
 # 0 "" 2
 # 184 "vc1dsp.c" 1
	Q16ADD xr7,xr10,xr14,xr0,AS,WW
 # 0 "" 2
 # 185 "vc1dsp.c" 1
	Q16ADD xr5,xr15,xr5,xr0,AS,WW
 # 0 "" 2
 # 186 "vc1dsp.c" 1
	Q16ADD xr5,xr7,xr5,xr0,AS,WW
 # 0 "" 2
 # 187 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr3,xr0,AS,WW
 # 0 "" 2
 # 188 "vc1dsp.c" 1
	Q16SLL xr10,xr6,xr8,xr14,4
 # 0 "" 2
 # 189 "vc1dsp.c" 1
	Q16SLL xr15,xr4,xr0,xr0,3
 # 0 "" 2
 # 190 "vc1dsp.c" 1
	Q16SLL xr3,xr2,xr0,xr0,2
 # 0 "" 2
 # 191 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr7,AS,WW
 # 0 "" 2
 # 192 "vc1dsp.c" 1
	Q16ADD xr0,xr7,xr15,xr7,AS,WW
 # 0 "" 2
 # 193 "vc1dsp.c" 1
	Q16ADD xr7,xr7,xr3,xr0,AS,WW
 # 0 "" 2
 # 194 "vc1dsp.c" 1
	Q16ADD xr0,xr7,xr1,xr7,AS,WW
 # 0 "" 2
 # 196 "vc1dsp.c" 1
	Q16ADD xr1,xr8,xr2,xr3,AS,WW
 # 0 "" 2
 # 197 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr6,xr14,4
 # 0 "" 2
 # 198 "vc1dsp.c" 1
	Q16SLL xr15,xr8,xr0,xr0,3
 # 0 "" 2
 # 199 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr10,AS,WW
 # 0 "" 2
 # 200 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr15,xr10,AS,WW
 # 0 "" 2
 # 201 "vc1dsp.c" 1
	Q16SLL xr15,xr4,xr0,xr0,2
 # 0 "" 2
 # 202 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr15,xr10,AS,WW
 # 0 "" 2
 # 203 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr1,xr1,AS,WW
 # 0 "" 2
 # 205 "vc1dsp.c" 1
	Q16SLL xr10,xr8,xr4,xr14,4
 # 0 "" 2
 # 206 "vc1dsp.c" 1
	Q16SLL xr15,xr2,xr0,xr0,3
 # 0 "" 2
 # 207 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr10,AS,WW
 # 0 "" 2
 # 208 "vc1dsp.c" 1
	Q16ADD xr10,xr10,xr15,xr0,AS,WW
 # 0 "" 2
 # 209 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr0,xr0,2
 # 0 "" 2
 # 210 "vc1dsp.c" 1
	Q16ADD xr10,xr10,xr15,xr0,AS,WW
 # 0 "" 2
 # 211 "vc1dsp.c" 1
	Q16ADD xr3,xr10,xr3,xr0,AS,WW
 # 0 "" 2
 # 213 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr5,xr5,AS,WW
 # 0 "" 2
 # 214 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr1,xr1,AS,WW
 # 0 "" 2
 # 215 "vc1dsp.c" 1
	Q16ADD xr13,xr13,xr3,xr3,AS,WW
 # 0 "" 2
 # 216 "vc1dsp.c" 1
	Q16ADD xr9,xr9,xr7,xr7,AS,WW
 # 0 "" 2
 # 217 "vc1dsp.c" 1
	S32I2M xr2,$2
 # 0 "" 2
 # 218 "vc1dsp.c" 1
	Q16ACC xr11,xr2,xr0,xr12,AS
 # 0 "" 2
 # 219 "vc1dsp.c" 1
	Q16ACC xr13,xr2,xr0,xr9,AS
 # 0 "" 2
 # 220 "vc1dsp.c" 1
	S32I2M xr4,$3
 # 0 "" 2
 # 221 "vc1dsp.c" 1
	Q16ACC xr5,xr4,xr0,xr1,AS
 # 0 "" 2
 # 222 "vc1dsp.c" 1
	Q16ACC xr3,xr4,xr0,xr7,AS
 # 0 "" 2
 # 223 "vc1dsp.c" 1
	Q16SAR xr11,xr11,xr12,xr12,7
 # 0 "" 2
 # 224 "vc1dsp.c" 1
	Q16SAR xr13,xr13,xr9,xr9,7
 # 0 "" 2
 # 225 "vc1dsp.c" 1
	Q16SAR xr7,xr7,xr3,xr3,7
 # 0 "" 2
 # 226 "vc1dsp.c" 1
	Q16SAR xr1,xr1,xr5,xr5,7
 # 0 "" 2
 # 227 "vc1dsp.c" 1
	S32STD xr11,$4,0
 # 0 "" 2
 # 228 "vc1dsp.c" 1
	S32STD xr12,$4,16
 # 0 "" 2
 # 229 "vc1dsp.c" 1
	S32STD xr13,$4,32
 # 0 "" 2
 # 230 "vc1dsp.c" 1
	S32STD xr9,$4,48
 # 0 "" 2
 # 231 "vc1dsp.c" 1
	S32STD xr7,$4,64
 # 0 "" 2
 # 232 "vc1dsp.c" 1
	S32STD xr3,$4,80
 # 0 "" 2
 # 233 "vc1dsp.c" 1
	S32STD xr1,$4,96
 # 0 "" 2
 # 234 "vc1dsp.c" 1
	S32STD xr5,$4,112
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	.set	noreorder
	.set	nomacro
	bne	$5,$6,$L12
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	vc1_inv_trans_8x8_c
	.align	2
	.ent	vc1_inv_trans_8x4_c
	.type	vc1_inv_trans_8x4_c, @function
vc1_inv_trans_8x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sll	$5,$5,6
	li	$2,786432			# 0xc0000
	addu	$4,$4,$5
	ori	$2,$2,0xc
#APP
 # 314 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1048576			# 0x100000
	ori	$3,$3,0x6
#APP
 # 315 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,1048576			# 0x100000
	ori	$2,$2,0xf
#APP
 # 316 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,589824			# 0x90000
	ori	$3,$3,0x4
#APP
 # 317 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	move	$3,$0
	move	$2,$4
	li	$5,4			# 0x4
$L17:
#APP
 # 320 "vc1dsp.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 321 "vc1dsp.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 322 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 323 "vc1dsp.c" 1
	S32LDD xr3,$2,8
 # 0 "" 2
 # 324 "vc1dsp.c" 1
	S32LDD xr4,$2,12
 # 0 "" 2
 # 325 "vc1dsp.c" 1
	D16MUL xr5,xr1,xr15,xr6,LW
 # 0 "" 2
 # 326 "vc1dsp.c" 1
	D16MAC xr5,xr3,xr15,xr6,AS,LW
 # 0 "" 2
 # 327 "vc1dsp.c" 1
	D16MUL xr7,xr2,xr14,xr8,LW
 # 0 "" 2
 # 328 "vc1dsp.c" 1
	D16MAC xr8,xr4,xr14,xr7,SA,LW
 # 0 "" 2
 # 330 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr7,xr7,AS
 # 0 "" 2
 # 331 "vc1dsp.c" 1
	D32ADD xr6,xr6,xr8,xr8,AS
 # 0 "" 2
 # 332 "vc1dsp.c" 1
	S32I2M xr9,$5
 # 0 "" 2
 # 333 "vc1dsp.c" 1
	D32ACC xr5,xr9,xr0,xr7,AS
 # 0 "" 2
 # 334 "vc1dsp.c" 1
	D32ACC xr6,xr9,xr0,xr8,AS
 # 0 "" 2
 # 335 "vc1dsp.c" 1
	D16MUL xr9,xr1,xr13,xr10,HW
 # 0 "" 2
 # 336 "vc1dsp.c" 1
	D16MUL xr11,xr1,xr12,xr1,HW
 # 0 "" 2
 # 337 "vc1dsp.c" 1
	D16MAC xr11,xr2,xr13,xr9,SA,HW
 # 0 "" 2
 # 338 "vc1dsp.c" 1
	D16MAC xr1,xr2,xr12,xr10,SS,HW
 # 0 "" 2
 # 340 "vc1dsp.c" 1
	D16MAC xr10,xr3,xr13,xr1,SA,HW
 # 0 "" 2
 # 341 "vc1dsp.c" 1
	D16MAC xr9,xr3,xr12,xr11,AA,HW
 # 0 "" 2
 # 343 "vc1dsp.c" 1
	D16MAC xr1,xr4,xr13,xr11,SA,HW
 # 0 "" 2
 # 344 "vc1dsp.c" 1
	D16MAC xr10,xr4,xr12,xr9,SA,HW
 # 0 "" 2
 # 345 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr9,xr9,AS
 # 0 "" 2
 # 346 "vc1dsp.c" 1
	D32ADD xr6,xr6,xr10,xr10,AS
 # 0 "" 2
 # 347 "vc1dsp.c" 1
	D32ADD xr8,xr8,xr11,xr11,AS
 # 0 "" 2
 # 348 "vc1dsp.c" 1
	D32ADD xr7,xr7,xr1,xr1,AS
 # 0 "" 2
 # 349 "vc1dsp.c" 1
	D32SARL xr5,xr6,xr5,3
 # 0 "" 2
 # 350 "vc1dsp.c" 1
	D32SARL xr6,xr7,xr8,3
 # 0 "" 2
 # 351 "vc1dsp.c" 1
	D32SARL xr7,xr11,xr1,3
 # 0 "" 2
 # 352 "vc1dsp.c" 1
	D32SARL xr8,xr9,xr10,3
 # 0 "" 2
 # 353 "vc1dsp.c" 1
	S32STD xr5,$2,0
 # 0 "" 2
 # 354 "vc1dsp.c" 1
	S32STD xr6,$2,4
 # 0 "" 2
 # 355 "vc1dsp.c" 1
	S32STD xr7,$2,8
 # 0 "" 2
 # 356 "vc1dsp.c" 1
	S32STD xr8,$2,12
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L17
	addiu	$2,$2,16
	.set	macro
	.set	reorder

	li	$2,4194304			# 0x400000
	ori	$2,$2,0x40
	move	$3,$0
	li	$5,4			# 0x4
$L18:
#APP
 # 363 "vc1dsp.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 364 "vc1dsp.c" 1
	S32LDD xr2,$4,16
 # 0 "" 2
 # 365 "vc1dsp.c" 1
	S32LDD xr3,$4,32
 # 0 "" 2
 # 366 "vc1dsp.c" 1
	S32LDD xr4,$4,48
 # 0 "" 2
 # 367 "vc1dsp.c" 1
	Q16ADD xr5,xr1,xr3,xr6,AS,WW
 # 0 "" 2
 # 368 "vc1dsp.c" 1
	Q16SLL xr7,xr5,xr6,xr8,4
 # 0 "" 2
 # 369 "vc1dsp.c" 1
	Q16ADD xr5,xr7,xr5,xr0,AS,WW
 # 0 "" 2
 # 370 "vc1dsp.c" 1
	Q16ADD xr6,xr8,xr6,xr0,AS,WW
 # 0 "" 2
 # 371 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
 # 372 "vc1dsp.c" 1
	Q16ACC xr5,xr11,xr0,xr6,AS
 # 0 "" 2
 # 373 "vc1dsp.c" 1
	Q16SLL xr1,xr2,xr4,xr3,3
 # 0 "" 2
 # 374 "vc1dsp.c" 1
	Q16SLL xr7,xr2,xr4,xr8,1
 # 0 "" 2
 # 375 "vc1dsp.c" 1
	Q16ADD xr9,xr1,xr7,xr0,AS,WW
 # 0 "" 2
 # 376 "vc1dsp.c" 1
	Q16ADD xr10,xr3,xr8,xr0,AS,WW
 # 0 "" 2
 # 377 "vc1dsp.c" 1
	Q16SLL xr1,xr1,xr3,xr3,1
 # 0 "" 2
 # 378 "vc1dsp.c" 1
	Q16SLL xr2,xr2,xr4,xr4,2
 # 0 "" 2
 # 380 "vc1dsp.c" 1
	Q16ADD xr1,xr1,xr2,xr0,AS,WW
 # 0 "" 2
 # 381 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr4,xr0,AS,WW
 # 0 "" 2
 # 382 "vc1dsp.c" 1
	Q16ADD xr1,xr1,xr7,xr0,AS,WW
 # 0 "" 2
 # 383 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr8,xr0,AS,WW
 # 0 "" 2
 # 384 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr1,xr1,AS,WW
 # 0 "" 2
 # 385 "vc1dsp.c" 1
	Q16ADD xr6,xr6,xr3,xr3,AS,WW
 # 0 "" 2
 # 386 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr10,xr0,AS,WW
 # 0 "" 2
 # 387 "vc1dsp.c" 1
	Q16ADD xr0,xr1,xr10,xr1,AS,WW
 # 0 "" 2
 # 388 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr9,xr0,AS,WW
 # 0 "" 2
 # 389 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr9,xr6,AS,WW
 # 0 "" 2
 # 390 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr1,xr1,7
 # 0 "" 2
 # 391 "vc1dsp.c" 1
	Q16SAR xr3,xr3,xr6,xr6,7
 # 0 "" 2
 # 392 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 393 "vc1dsp.c" 1
	S32STD xr3,$4,16
 # 0 "" 2
 # 394 "vc1dsp.c" 1
	S32STD xr6,$4,32
 # 0 "" 2
 # 395 "vc1dsp.c" 1
	S32STD xr1,$4,48
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L18
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	vc1_inv_trans_8x4_c
	.align	2
	.ent	vc1_inv_trans_4x8_c
	.type	vc1_inv_trans_4x8_c, @function
vc1_inv_trans_4x8_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	sll	$5,$5,3
	li	$2,1114112			# 0x110000
	addu	$4,$4,$5
	ori	$2,$2,0x16
#APP
 # 473 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1441792			# 0x160000
	ori	$3,$3,0xa
#APP
 # 474 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	move	$3,$0
	move	$2,$4
	li	$6,4			# 0x4
	li	$5,8			# 0x8
$L23:
#APP
 # 476 "vc1dsp.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 477 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 478 "vc1dsp.c" 1
	D16MUL xr3,xr1,xr15,xr4,LW
 # 0 "" 2
 # 479 "vc1dsp.c" 1
	D16MAC xr3,xr2,xr15,xr4,AS,LW
 # 0 "" 2
 # 480 "vc1dsp.c" 1
	S32I2M xr13,$6
 # 0 "" 2
 # 481 "vc1dsp.c" 1
	D32ACC xr3,xr13,xr0,xr4,AS
 # 0 "" 2
 # 482 "vc1dsp.c" 1
	D16MUL xr5,xr1,xr14,xr6,HW
 # 0 "" 2
 # 483 "vc1dsp.c" 1
	D16MUL xr7,xr2,xr14,xr8,HW
 # 0 "" 2
 # 484 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr8,xr0,AS
 # 0 "" 2
 # 485 "vc1dsp.c" 1
	D32ADD xr0,xr7,xr6,xr6,AS
 # 0 "" 2
 # 486 "vc1dsp.c" 1
	D32ADD xr3,xr3,xr5,xr5,AS
 # 0 "" 2
 # 487 "vc1dsp.c" 1
	D32ADD xr4,xr4,xr6,xr6,AS
 # 0 "" 2
 # 488 "vc1dsp.c" 1
	D32SARL xr3,xr6,xr3,3
 # 0 "" 2
 # 489 "vc1dsp.c" 1
	D32SARL xr5,xr5,xr4,3
 # 0 "" 2
 # 490 "vc1dsp.c" 1
	S32STD xr3,$2,0
 # 0 "" 2
 # 491 "vc1dsp.c" 1
	S32STD xr5,$2,4
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L23
	addiu	$2,$2,16
	.set	macro
	.set	reorder

	li	$2,4194304			# 0x400000
	li	$3,4259840			# 0x410000
	ori	$2,$2,0x40
	ori	$3,$3,0x41
	move	$5,$0
	li	$6,2			# 0x2
$L24:
#APP
 # 500 "vc1dsp.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 501 "vc1dsp.c" 1
	S32LDD xr2,$4,16
 # 0 "" 2
 # 502 "vc1dsp.c" 1
	S32LDD xr3,$4,32
 # 0 "" 2
 # 503 "vc1dsp.c" 1
	S32LDD xr4,$4,48
 # 0 "" 2
 # 504 "vc1dsp.c" 1
	S32LDD xr5,$4,64
 # 0 "" 2
 # 505 "vc1dsp.c" 1
	S32LDD xr6,$4,80
 # 0 "" 2
 # 506 "vc1dsp.c" 1
	S32LDD xr7,$4,96
 # 0 "" 2
 # 507 "vc1dsp.c" 1
	S32LDD xr8,$4,112
 # 0 "" 2
 # 509 "vc1dsp.c" 1
	Q16ADD xr9,xr1,xr5,xr10,AS,WW
 # 0 "" 2
 # 510 "vc1dsp.c" 1
	Q16SLL xr11,xr9,xr10,xr12,3
 # 0 "" 2
 # 511 "vc1dsp.c" 1
	Q16SLL xr13,xr9,xr10,xr14,2
 # 0 "" 2
 # 512 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr13,xr0,AS,WW
 # 0 "" 2
 # 513 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr14,xr0,AS,WW
 # 0 "" 2
 # 514 "vc1dsp.c" 1
	Q16SLL xr9,xr3,xr7,xr10,4
 # 0 "" 2
 # 515 "vc1dsp.c" 1
	Q16SLL xr13,xr3,xr7,xr14,3
 # 0 "" 2
 # 516 "vc1dsp.c" 1
	Q16SLL xr15,xr3,xr7,xr1,1
 # 0 "" 2
 # 518 "vc1dsp.c" 1
	Q16ADD xr9,xr9,xr14,xr0,AS,WW
 # 0 "" 2
 # 519 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AS,WW
 # 0 "" 2
 # 520 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr15,xr13,AS,WW
 # 0 "" 2
 # 521 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr10,xr13,AS,WW
 # 0 "" 2
 # 522 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr9,xr9,AS,WW
 # 0 "" 2
 # 523 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr13,xr13,AS,WW
 # 0 "" 2
 # 524 "vc1dsp.c" 1
	Q16ADD xr1,xr6,xr4,xr3,AS,WW
 # 0 "" 2
 # 525 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr4,xr14,4
 # 0 "" 2
 # 526 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr8,xr5,4
 # 0 "" 2
 # 529 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr4,xr14,4
 # 0 "" 2
 # 530 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr0,xr0,3
 # 0 "" 2
 # 531 "vc1dsp.c" 1
	Q16SLL xr5,xr8,xr0,xr0,2
 # 0 "" 2
 # 532 "vc1dsp.c" 1
	Q16ADD xr7,xr10,xr14,xr0,AS,WW
 # 0 "" 2
 # 533 "vc1dsp.c" 1
	Q16ADD xr5,xr15,xr5,xr0,AS,WW
 # 0 "" 2
 # 534 "vc1dsp.c" 1
	Q16ADD xr5,xr7,xr5,xr0,AS,WW
 # 0 "" 2
 # 535 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr3,xr0,AS,WW
 # 0 "" 2
 # 536 "vc1dsp.c" 1
	Q16SLL xr10,xr6,xr8,xr14,4
 # 0 "" 2
 # 537 "vc1dsp.c" 1
	Q16SLL xr15,xr4,xr0,xr0,3
 # 0 "" 2
 # 538 "vc1dsp.c" 1
	Q16SLL xr3,xr2,xr0,xr0,2
 # 0 "" 2
 # 539 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr7,AS,WW
 # 0 "" 2
 # 540 "vc1dsp.c" 1
	Q16ADD xr0,xr7,xr15,xr7,AS,WW
 # 0 "" 2
 # 541 "vc1dsp.c" 1
	Q16ADD xr7,xr7,xr3,xr0,AS,WW
 # 0 "" 2
 # 542 "vc1dsp.c" 1
	Q16ADD xr0,xr7,xr1,xr7,AS,WW
 # 0 "" 2
 # 544 "vc1dsp.c" 1
	Q16ADD xr1,xr8,xr2,xr3,AS,WW
 # 0 "" 2
 # 545 "vc1dsp.c" 1
	Q16SLL xr10,xr2,xr6,xr14,4
 # 0 "" 2
 # 546 "vc1dsp.c" 1
	Q16SLL xr15,xr8,xr0,xr0,3
 # 0 "" 2
 # 547 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr10,AS,WW
 # 0 "" 2
 # 548 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr15,xr10,AS,WW
 # 0 "" 2
 # 549 "vc1dsp.c" 1
	Q16SLL xr15,xr4,xr0,xr0,2
 # 0 "" 2
 # 550 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr15,xr10,AS,WW
 # 0 "" 2
 # 551 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr1,xr1,AS,WW
 # 0 "" 2
 # 553 "vc1dsp.c" 1
	Q16SLL xr10,xr8,xr4,xr14,4
 # 0 "" 2
 # 554 "vc1dsp.c" 1
	Q16SLL xr15,xr2,xr0,xr0,3
 # 0 "" 2
 # 555 "vc1dsp.c" 1
	Q16ADD xr0,xr10,xr14,xr10,AS,WW
 # 0 "" 2
 # 556 "vc1dsp.c" 1
	Q16ADD xr10,xr10,xr15,xr0,AS,WW
 # 0 "" 2
 # 557 "vc1dsp.c" 1
	Q16SLL xr15,xr6,xr0,xr0,2
 # 0 "" 2
 # 558 "vc1dsp.c" 1
	Q16ADD xr10,xr10,xr15,xr0,AS,WW
 # 0 "" 2
 # 559 "vc1dsp.c" 1
	Q16ADD xr3,xr10,xr3,xr0,AS,WW
 # 0 "" 2
 # 561 "vc1dsp.c" 1
	Q16ADD xr11,xr11,xr5,xr5,AS,WW
 # 0 "" 2
 # 562 "vc1dsp.c" 1
	Q16ADD xr12,xr12,xr1,xr1,AS,WW
 # 0 "" 2
 # 563 "vc1dsp.c" 1
	Q16ADD xr13,xr13,xr3,xr3,AS,WW
 # 0 "" 2
 # 564 "vc1dsp.c" 1
	Q16ADD xr9,xr9,xr7,xr7,AS,WW
 # 0 "" 2
 # 565 "vc1dsp.c" 1
	S32I2M xr2,$2
 # 0 "" 2
 # 566 "vc1dsp.c" 1
	Q16ACC xr11,xr2,xr0,xr12,AS
 # 0 "" 2
 # 567 "vc1dsp.c" 1
	Q16ACC xr13,xr2,xr0,xr9,AS
 # 0 "" 2
 # 568 "vc1dsp.c" 1
	S32I2M xr4,$3
 # 0 "" 2
 # 569 "vc1dsp.c" 1
	Q16ACC xr5,xr4,xr0,xr1,AS
 # 0 "" 2
 # 570 "vc1dsp.c" 1
	Q16ACC xr3,xr4,xr0,xr7,AS
 # 0 "" 2
 # 571 "vc1dsp.c" 1
	Q16SAR xr11,xr11,xr12,xr12,7
 # 0 "" 2
 # 572 "vc1dsp.c" 1
	Q16SAR xr13,xr13,xr9,xr9,7
 # 0 "" 2
 # 573 "vc1dsp.c" 1
	Q16SAR xr7,xr7,xr3,xr3,7
 # 0 "" 2
 # 574 "vc1dsp.c" 1
	Q16SAR xr1,xr1,xr5,xr5,7
 # 0 "" 2
 # 575 "vc1dsp.c" 1
	S32STD xr11,$4,0
 # 0 "" 2
 # 576 "vc1dsp.c" 1
	S32STD xr12,$4,16
 # 0 "" 2
 # 577 "vc1dsp.c" 1
	S32STD xr13,$4,32
 # 0 "" 2
 # 578 "vc1dsp.c" 1
	S32STD xr9,$4,48
 # 0 "" 2
 # 579 "vc1dsp.c" 1
	S32STD xr7,$4,64
 # 0 "" 2
 # 580 "vc1dsp.c" 1
	S32STD xr3,$4,80
 # 0 "" 2
 # 581 "vc1dsp.c" 1
	S32STD xr1,$4,96
 # 0 "" 2
 # 582 "vc1dsp.c" 1
	S32STD xr5,$4,112
 # 0 "" 2
#NO_APP
	addiu	$5,$5,1
	.set	noreorder
	.set	nomacro
	bne	$5,$6,$L24
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	vc1_inv_trans_4x8_c
	.align	2
	.ent	vc1_inv_trans_4x4_c
	.type	vc1_inv_trans_4x4_c, @function
vc1_inv_trans_4x4_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	andi	$2,$5,0x2
	sll	$2,$2,2
	andi	$5,$5,0x1
	addu	$2,$2,$5
	sll	$2,$2,3
	li	$3,1114112			# 0x110000
	addu	$4,$4,$2
	ori	$3,$3,0x16
#APP
 # 659 "vc1dsp.c" 1
	S32I2M xr15,$3
 # 0 "" 2
#NO_APP
	li	$2,1441792			# 0x160000
	ori	$2,$2,0xa
#APP
 # 660 "vc1dsp.c" 1
	S32I2M xr14,$2
 # 0 "" 2
#NO_APP
	move	$3,$0
	move	$2,$4
	li	$5,4			# 0x4
$L29:
#APP
 # 662 "vc1dsp.c" 1
	S32LDD xr1,$2,0
 # 0 "" 2
 # 663 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 664 "vc1dsp.c" 1
	D16MUL xr3,xr1,xr15,xr4,LW
 # 0 "" 2
 # 665 "vc1dsp.c" 1
	D16MAC xr3,xr2,xr15,xr4,AS,LW
 # 0 "" 2
 # 666 "vc1dsp.c" 1
	S32I2M xr13,$5
 # 0 "" 2
 # 667 "vc1dsp.c" 1
	D32ACC xr3,xr13,xr0,xr4,AS
 # 0 "" 2
 # 668 "vc1dsp.c" 1
	D16MUL xr5,xr1,xr14,xr6,HW
 # 0 "" 2
 # 669 "vc1dsp.c" 1
	D16MUL xr7,xr2,xr14,xr8,HW
 # 0 "" 2
 # 670 "vc1dsp.c" 1
	D32ADD xr5,xr5,xr8,xr0,AS
 # 0 "" 2
 # 671 "vc1dsp.c" 1
	D32ADD xr0,xr7,xr6,xr6,AS
 # 0 "" 2
 # 672 "vc1dsp.c" 1
	D32ADD xr3,xr3,xr5,xr5,AS
 # 0 "" 2
 # 673 "vc1dsp.c" 1
	D32ADD xr4,xr4,xr6,xr6,AS
 # 0 "" 2
 # 674 "vc1dsp.c" 1
	D32SARL xr3,xr6,xr3,3
 # 0 "" 2
 # 675 "vc1dsp.c" 1
	D32SARL xr5,xr5,xr4,3
 # 0 "" 2
 # 676 "vc1dsp.c" 1
	S32STD xr3,$2,0
 # 0 "" 2
 # 677 "vc1dsp.c" 1
	S32STD xr5,$2,4
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L29
	addiu	$2,$2,16
	.set	macro
	.set	reorder

	li	$2,4194304			# 0x400000
	ori	$2,$2,0x40
	move	$3,$0
	li	$5,2			# 0x2
$L30:
#APP
 # 685 "vc1dsp.c" 1
	S32LDD xr1,$4,0
 # 0 "" 2
 # 686 "vc1dsp.c" 1
	S32LDD xr2,$4,16
 # 0 "" 2
 # 687 "vc1dsp.c" 1
	S32LDD xr3,$4,32
 # 0 "" 2
 # 688 "vc1dsp.c" 1
	S32LDD xr4,$4,48
 # 0 "" 2
 # 689 "vc1dsp.c" 1
	Q16ADD xr5,xr1,xr3,xr6,AS,WW
 # 0 "" 2
 # 690 "vc1dsp.c" 1
	Q16SLL xr7,xr5,xr6,xr8,4
 # 0 "" 2
 # 691 "vc1dsp.c" 1
	Q16ADD xr5,xr7,xr5,xr0,AS,WW
 # 0 "" 2
 # 692 "vc1dsp.c" 1
	Q16ADD xr6,xr8,xr6,xr0,AS,WW
 # 0 "" 2
 # 693 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
 # 694 "vc1dsp.c" 1
	Q16ACC xr5,xr11,xr0,xr6,AS
 # 0 "" 2
 # 695 "vc1dsp.c" 1
	Q16SLL xr1,xr2,xr4,xr3,3
 # 0 "" 2
 # 696 "vc1dsp.c" 1
	Q16SLL xr7,xr2,xr4,xr8,1
 # 0 "" 2
 # 697 "vc1dsp.c" 1
	Q16ADD xr9,xr1,xr7,xr0,AS,WW
 # 0 "" 2
 # 698 "vc1dsp.c" 1
	Q16ADD xr10,xr3,xr8,xr0,AS,WW
 # 0 "" 2
 # 699 "vc1dsp.c" 1
	Q16SLL xr1,xr1,xr3,xr3,1
 # 0 "" 2
 # 700 "vc1dsp.c" 1
	Q16SLL xr2,xr2,xr4,xr4,2
 # 0 "" 2
 # 702 "vc1dsp.c" 1
	Q16ADD xr1,xr1,xr2,xr0,AS,WW
 # 0 "" 2
 # 703 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr4,xr0,AS,WW
 # 0 "" 2
 # 704 "vc1dsp.c" 1
	Q16ADD xr1,xr1,xr7,xr0,AS,WW
 # 0 "" 2
 # 705 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr8,xr0,AS,WW
 # 0 "" 2
 # 706 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr1,xr1,AS,WW
 # 0 "" 2
 # 707 "vc1dsp.c" 1
	Q16ADD xr6,xr6,xr3,xr3,AS,WW
 # 0 "" 2
 # 708 "vc1dsp.c" 1
	Q16ADD xr5,xr5,xr10,xr0,AS,WW
 # 0 "" 2
 # 709 "vc1dsp.c" 1
	Q16ADD xr0,xr1,xr10,xr1,AS,WW
 # 0 "" 2
 # 710 "vc1dsp.c" 1
	Q16ADD xr3,xr3,xr9,xr0,AS,WW
 # 0 "" 2
 # 711 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr9,xr6,AS,WW
 # 0 "" 2
 # 712 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr1,xr1,7
 # 0 "" 2
 # 713 "vc1dsp.c" 1
	Q16SAR xr3,xr3,xr6,xr6,7
 # 0 "" 2
 # 714 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 715 "vc1dsp.c" 1
	S32STD xr3,$4,16
 # 0 "" 2
 # 716 "vc1dsp.c" 1
	S32STD xr6,$4,32
 # 0 "" 2
 # 717 "vc1dsp.c" 1
	S32STD xr1,$4,48
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	.set	noreorder
	.set	nomacro
	bne	$3,$5,$L30
	addiu	$4,$4,4
	.set	macro
	.set	reorder

	j	$31
	.end	vc1_inv_trans_4x4_c
	.align	2
	.ent	put_vc1_mspel_mc10_c
	.type	put_vc1_mspel_mc10_c, @function
put_vc1_mspel_mc10_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$9,$5,1
	addiu	$5,$5,-1
	andi	$3,$9,0x3
	li	$2,4			# 0x4
	andi	$8,$5,0x3
	subu	$10,$2,$3
	subu	$8,$2,$8
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,892665856			# 0x35350000
	and	$9,$9,$3
	and	$5,$5,$3
	addiu	$12,$8,-1
	addiu	$11,$10,-1
	ori	$2,$2,0x3535
#APP
 # 904 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,303169536			# 0x12120000
	ori	$3,$3,0x1212
#APP
 # 905 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,67371008			# 0x4040000
	ori	$2,$2,0x404
#APP
 # 906 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 907 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	li	$2,2097152			# 0x200000
	ori	$2,$2,0x20
#APP
 # 908 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	sll	$3,$7,16
	addu	$3,$3,$7
#APP
 # 909 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	move	$2,$0
	addiu	$3,$6,-4
	li	$7,8			# 0x8
$L35:
#APP
 # 911 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 912 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 914 "vc1dsp.c" 1
	S32LDD xr5,$9,0
 # 0 "" 2
 # 915 "vc1dsp.c" 1
	S32LDD xr6,$9,4
 # 0 "" 2
 # 917 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 918 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 919 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$10
 # 0 "" 2
 # 920 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$11
 # 0 "" 2
 # 921 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 922 "vc1dsp.c" 1
	Q8MAC xr5,xr3,xr11,xr6,SS
 # 0 "" 2
 # 923 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr14,xr1
 # 0 "" 2
 # 924 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr1,SS
 # 0 "" 2
 # 925 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr9,xr5,AA,WW
 # 0 "" 2
 # 926 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr1,xr6,AA,WW
 # 0 "" 2
 # 927 "vc1dsp.c" 1
	Q16ACC xr5,xr13,xr12,xr6,SS
 # 0 "" 2
 # 928 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,6
 # 0 "" 2
 # 929 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
 # 930 "vc1dsp.c" 1
	S32LDI xr1,$5,4
 # 0 "" 2
 # 931 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 932 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 933 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 935 "vc1dsp.c" 1
	S32LDI xr1,$9,4
 # 0 "" 2
 # 936 "vc1dsp.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 938 "vc1dsp.c" 1
	S32ALN xr7,xr2,xr1,$10
 # 0 "" 2
 # 939 "vc1dsp.c" 1
	S32ALN xr8,xr2,xr1,$11
 # 0 "" 2
 # 940 "vc1dsp.c" 1
	Q8MUL xr1,xr4,xr15,xr2
 # 0 "" 2
 # 941 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 943 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr14,xr3
 # 0 "" 2
 # 944 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr3,SS
 # 0 "" 2
 # 945 "vc1dsp.c" 1
	Q16ADD xr0,xr1,xr9,xr1,AA,WW
 # 0 "" 2
 # 947 "vc1dsp.c" 1
	Q16ADD xr0,xr2,xr3,xr2,AA,WW
 # 0 "" 2
 # 948 "vc1dsp.c" 1
	Q16ACC xr1,xr13,xr12,xr2,SS
 # 0 "" 2
 # 949 "vc1dsp.c" 1
	Q16SAR xr1,xr1,xr2,xr2,6
 # 0 "" 2
 # 950 "vc1dsp.c" 1
	Q16SAT xr1,xr1,xr2
 # 0 "" 2
 # 951 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 952 "vc1dsp.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	addu	$4,$4,$6
	addu	$5,$5,$3
	.set	noreorder
	.set	nomacro
	bne	$2,$7,$L35
	addu	$9,$9,$3
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc10_c
	.align	2
	.ent	put_vc1_mspel_mc20_c
	.type	put_vc1_mspel_mc20_c, @function
put_vc1_mspel_mc20_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$9,$5,1
	addiu	$5,$5,-1
	andi	$3,$9,0x3
	li	$2,4			# 0x4
	andi	$8,$5,0x3
	subu	$10,$2,$3
	subu	$8,$2,$8
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,151584768			# 0x9090000
	and	$9,$9,$3
	and	$5,$5,$3
	addiu	$12,$8,-1
	addiu	$11,$10,-1
	ori	$2,$2,0x909
#APP
 # 1003 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,16842752			# 0x1010000
	ori	$3,$3,0x101
#APP
 # 1004 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,524288			# 0x80000
	ori	$2,$2,0x8
#APP
 # 1005 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	sll	$3,$7,16
	addu	$3,$3,$7
#APP
 # 1006 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	move	$2,$0
	addiu	$3,$6,-4
	li	$7,8			# 0x8
$L39:
#APP
 # 1008 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1009 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1011 "vc1dsp.c" 1
	S32LDD xr5,$9,0
 # 0 "" 2
 # 1012 "vc1dsp.c" 1
	S32LDD xr6,$9,4
 # 0 "" 2
 # 1014 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1015 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 1016 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$10
 # 0 "" 2
 # 1017 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$11
 # 0 "" 2
 # 1018 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 1019 "vc1dsp.c" 1
	Q8MAC xr5,xr3,xr14,xr6,SS
 # 0 "" 2
 # 1020 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr15,xr10
 # 0 "" 2
 # 1021 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr10,SS
 # 0 "" 2
 # 1022 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr9,xr5,AA,WW
 # 0 "" 2
 # 1023 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr10,xr6,AA,WW
 # 0 "" 2
 # 1024 "vc1dsp.c" 1
	Q16ACC xr5,xr13,xr12,xr6,SS
 # 0 "" 2
 # 1025 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,4
 # 0 "" 2
 # 1026 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
 # 1027 "vc1dsp.c" 1
	S32LDI xr1,$5,4
 # 0 "" 2
 # 1028 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1029 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1030 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 1032 "vc1dsp.c" 1
	S32LDI xr1,$9,4
 # 0 "" 2
 # 1033 "vc1dsp.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 1034 "vc1dsp.c" 1
	S32ALN xr7,xr2,xr1,$10
 # 0 "" 2
 # 1035 "vc1dsp.c" 1
	S32ALN xr8,xr2,xr1,$11
 # 0 "" 2
 # 1036 "vc1dsp.c" 1
	Q8MUL xr1,xr4,xr15,xr2
 # 0 "" 2
 # 1037 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 1039 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr15,xr10
 # 0 "" 2
 # 1040 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr10,SS
 # 0 "" 2
 # 1041 "vc1dsp.c" 1
	Q16ADD xr0,xr1,xr9,xr1,AA,WW
 # 0 "" 2
 # 1043 "vc1dsp.c" 1
	Q16ADD xr0,xr2,xr10,xr2,AA,WW
 # 0 "" 2
 # 1044 "vc1dsp.c" 1
	Q16ACC xr1,xr13,xr12,xr2,SS
 # 0 "" 2
 # 1045 "vc1dsp.c" 1
	Q16SAR xr1,xr1,xr2,xr2,4
 # 0 "" 2
 # 1046 "vc1dsp.c" 1
	Q16SAT xr1,xr1,xr2
 # 0 "" 2
 # 1047 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 1048 "vc1dsp.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	addu	$4,$4,$6
	addu	$5,$5,$3
	.set	noreorder
	.set	nomacro
	bne	$2,$7,$L39
	addu	$9,$9,$3
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc20_c
	.align	2
	.ent	put_vc1_mspel_mc30_c
	.type	put_vc1_mspel_mc30_c, @function
put_vc1_mspel_mc30_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$9,$5,1
	addiu	$5,$5,-1
	andi	$3,$9,0x3
	li	$2,4			# 0x4
	andi	$8,$5,0x3
	subu	$10,$2,$3
	subu	$8,$2,$8
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,303169536			# 0x12120000
	and	$9,$9,$3
	and	$5,$5,$3
	addiu	$12,$8,-1
	addiu	$11,$10,-1
	ori	$2,$2,0x1212
#APP
 # 1102 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,892665856			# 0x35350000
	ori	$3,$3,0x3535
#APP
 # 1103 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,50528256			# 0x3030000
	ori	$2,$2,0x303
#APP
 # 1104 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,67371008			# 0x4040000
	ori	$3,$3,0x404
#APP
 # 1105 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	li	$2,2097152			# 0x200000
	ori	$2,$2,0x20
#APP
 # 1106 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	sll	$3,$7,16
	addu	$3,$3,$7
#APP
 # 1107 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	move	$2,$0
	addiu	$3,$6,-4
	li	$7,8			# 0x8
$L43:
#APP
 # 1109 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1110 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1112 "vc1dsp.c" 1
	S32LDD xr5,$9,0
 # 0 "" 2
 # 1113 "vc1dsp.c" 1
	S32LDD xr6,$9,4
 # 0 "" 2
 # 1115 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1116 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 1117 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$10
 # 0 "" 2
 # 1118 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$11
 # 0 "" 2
 # 1119 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 1120 "vc1dsp.c" 1
	Q8MAC xr5,xr3,xr11,xr6,SS
 # 0 "" 2
 # 1121 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr14,xr1
 # 0 "" 2
 # 1122 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr1,SS
 # 0 "" 2
 # 1123 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr9,xr5,AA,WW
 # 0 "" 2
 # 1124 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr1,xr6,AA,WW
 # 0 "" 2
 # 1125 "vc1dsp.c" 1
	Q16ACC xr5,xr13,xr12,xr6,SS
 # 0 "" 2
 # 1126 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,6
 # 0 "" 2
 # 1127 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
 # 1128 "vc1dsp.c" 1
	S32LDI xr1,$5,4
 # 0 "" 2
 # 1129 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1130 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1131 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$12
 # 0 "" 2
 # 1133 "vc1dsp.c" 1
	S32LDI xr1,$9,4
 # 0 "" 2
 # 1134 "vc1dsp.c" 1
	S32LDD xr2,$9,4
 # 0 "" 2
 # 1135 "vc1dsp.c" 1
	S32ALN xr7,xr2,xr1,$10
 # 0 "" 2
 # 1136 "vc1dsp.c" 1
	S32ALN xr8,xr2,xr1,$11
 # 0 "" 2
 # 1137 "vc1dsp.c" 1
	Q8MUL xr1,xr4,xr15,xr2
 # 0 "" 2
 # 1138 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1140 "vc1dsp.c" 1
	Q8MUL xr9,xr7,xr14,xr3
 # 0 "" 2
 # 1141 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr3,SS
 # 0 "" 2
 # 1142 "vc1dsp.c" 1
	Q16ADD xr0,xr1,xr9,xr1,AA,WW
 # 0 "" 2
 # 1144 "vc1dsp.c" 1
	Q16ADD xr0,xr2,xr3,xr2,AA,WW
 # 0 "" 2
 # 1145 "vc1dsp.c" 1
	Q16ACC xr1,xr13,xr12,xr2,SS
 # 0 "" 2
 # 1146 "vc1dsp.c" 1
	Q16SAR xr1,xr1,xr2,xr2,6
 # 0 "" 2
 # 1147 "vc1dsp.c" 1
	Q16SAT xr1,xr1,xr2
 # 0 "" 2
 # 1149 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 1150 "vc1dsp.c" 1
	S32STD xr1,$4,4
 # 0 "" 2
#NO_APP
	addiu	$2,$2,1
	addu	$4,$4,$6
	addu	$5,$5,$3
	.set	noreorder
	.set	nomacro
	bne	$2,$7,$L43
	addu	$9,$9,$3
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc30_c
	.align	2
	.ent	put_vc1_mspel_mc01_c
	.type	put_vc1_mspel_mc01_c, @function
put_vc1_mspel_mc01_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,892665856			# 0x35350000
	and	$5,$5,$3
	ori	$2,$2,0x3535
#APP
 # 1197 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,303169536			# 0x12120000
	ori	$3,$3,0x1212
#APP
 # 1198 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,67371008			# 0x4040000
	ori	$2,$2,0x404
#APP
 # 1199 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 1200 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	li	$2,2097152			# 0x200000
	ori	$2,$2,0x20
#APP
 # 1201 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,1			# 0x1
	subu	$3,$3,$7
	sll	$2,$3,16
	addu	$2,$2,$3
#APP
 # 1202 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-2			# 0xfffffffffffffffe
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	subu	$3,$0,$3
	sll	$9,$2,1
	move	$7,$0
	li	$10,8			# 0x8
$L47:
#APP
 # 1204 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1205 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1207 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 1208 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1210 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1211 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 1213 "vc1dsp.c" 1
	S32LDIV xr1,$5,$6,0
 # 0 "" 2
 # 1214 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1216 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 1217 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1219 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1220 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 1222 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1223 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1224 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 1225 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 1227 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 1228 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 1230 "vc1dsp.c" 1
	Q16ACC xr5,xr13,xr12,xr6,SS
 # 0 "" 2
 # 1231 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,6
 # 0 "" 2
 # 1232 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
#NO_APP
	addu	$2,$5,$3
#APP
 # 1234 "vc1dsp.c" 1
	S32LDI xr1,$2,4
 # 0 "" 2
 # 1235 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 1237 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 1238 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1239 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1240 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr9,$8
 # 0 "" 2
 # 1242 "vc1dsp.c" 1
	S32LDIV xr1,$2,$6,0
 # 0 "" 2
 # 1243 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 1245 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 1246 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1248 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1249 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr9,$8
 # 0 "" 2
 # 1251 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1252 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1253 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr6
 # 0 "" 2
 # 1254 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr6,SS
 # 0 "" 2
 # 1256 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1257 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 1259 "vc1dsp.c" 1
	Q16ACC xr9,xr13,xr12,xr6,SS
 # 0 "" 2
 # 1260 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr6,xr6,6
 # 0 "" 2
 # 1261 "vc1dsp.c" 1
	Q16SAT xr9,xr9,xr6
 # 0 "" 2
 # 1263 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 1264 "vc1dsp.c" 1
	S32STD xr9,$4,4
 # 0 "" 2
#NO_APP
	addiu	$7,$7,1
	addu	$4,$4,$6
	.set	noreorder
	.set	nomacro
	bne	$7,$10,$L47
	addu	$5,$2,$9
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc01_c
	.align	2
	.ent	put_vc1_mspel_mc11_c
	.type	put_vc1_mspel_mc11_c, @function
put_vc1_mspel_mc11_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,892665856			# 0x35350000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x3535
#APP
 # 1316 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,303169536			# 0x12120000
	ori	$3,$3,0x1212
#APP
 # 1317 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,67371008			# 0x4040000
	ori	$2,$2,0x404
#APP
 # 1318 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 1319 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,15
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 1320 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L51:
#APP
 # 1322 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1323 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1324 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1325 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1326 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1327 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 1328 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 1329 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1330 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1331 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1333 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1334 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 1336 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1337 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1338 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 1339 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 1341 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 1342 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 1344 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 1345 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,5
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 1348 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1349 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1351 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1352 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1353 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1354 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1356 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1357 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1359 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1360 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1362 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1363 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1365 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1366 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1367 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1368 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1370 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1371 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1373 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1374 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 1375 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 1376 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 1377 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 1378 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 1379 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 1380 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 1381 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 1382 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 1385 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1386 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1388 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1389 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1390 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1391 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1392 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1393 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1395 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1396 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1398 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1399 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1401 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1402 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1403 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1404 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1406 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1407 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1409 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1410 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 1411 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 1412 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 1413 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L51
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,3473408			# 0x350000
	ori	$2,$2,0x4
#APP
 # 1421 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1179648			# 0x120000
	ori	$3,$3,0x3
#APP
 # 1422 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 1423 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L52:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 1429 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 1430 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1431 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1432 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1434 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1435 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 1440 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 1441 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1442 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1443 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1445 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 1446 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 1447 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1448 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 1449 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1450 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1451 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1452 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1454 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1455 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 1457 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1458 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1459 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1460 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1462 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 1463 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 1464 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1465 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 1466 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 1467 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1468 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1469 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1470 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1472 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 1473 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 1475 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1476 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1477 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1478 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1480 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 1481 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 1482 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 1483 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 1484 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1485 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1486 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1487 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1489 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 1490 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 1492 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1493 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1494 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1495 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1497 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 1498 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 1499 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 1500 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 1501 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 1503 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 1504 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L52
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc11_c
	.align	2
	.ent	put_vc1_mspel_mc21_c
	.type	put_vc1_mspel_mc21_c, @function
put_vc1_mspel_mc21_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,892665856			# 0x35350000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x3535
#APP
 # 1581 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,303169536			# 0x12120000
	ori	$3,$3,0x1212
#APP
 # 1582 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,67371008			# 0x4040000
	ori	$2,$2,0x404
#APP
 # 1583 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 1584 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,3
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 1585 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L57:
#APP
 # 1587 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1588 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1589 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1590 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1591 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1592 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 1593 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 1594 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1595 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1596 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1598 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1599 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 1601 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1602 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1603 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 1604 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 1606 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 1607 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 1609 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 1610 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,3
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 1613 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1614 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1616 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1617 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1618 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1619 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1621 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1622 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1624 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1625 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1627 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1628 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1630 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1631 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1632 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1633 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1635 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1636 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1638 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1639 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 1640 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 1641 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 1642 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 1643 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 1644 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 1645 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 1646 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 1647 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 1650 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1651 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1653 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1654 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1655 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1656 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1657 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1658 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1660 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1661 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1663 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1664 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1666 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1667 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1668 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1669 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1671 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1672 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1674 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1675 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 1676 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 1677 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 1678 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L57
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,589824			# 0x90000
	ori	$2,$2,0x1
#APP
 # 1686 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,64			# 0x40
	subu	$3,$3,$7
#APP
 # 1687 "vc1dsp.c" 1
	S32I2M xr13,$3
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L58:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 1693 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 1694 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1695 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1696 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1698 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1699 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 1704 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 1705 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1706 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1707 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1709 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 1710 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 1711 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1712 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 1713 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1714 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1715 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1716 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1718 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1719 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 1721 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1722 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1723 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1724 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1726 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 1727 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 1728 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1729 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 1730 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 1731 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1732 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1733 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1734 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1736 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 1737 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 1739 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1740 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1741 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1742 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1744 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 1745 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 1746 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 1747 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 1748 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1749 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1750 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1751 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1753 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 1754 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 1756 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1757 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1758 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1759 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1761 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 1762 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 1763 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 1764 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 1765 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 1767 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 1768 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L58
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc21_c
	.align	2
	.ent	put_vc1_mspel_mc31_c
	.type	put_vc1_mspel_mc31_c, @function
put_vc1_mspel_mc31_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,892665856			# 0x35350000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x3535
#APP
 # 1846 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,303169536			# 0x12120000
	ori	$3,$3,0x1212
#APP
 # 1847 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,67371008			# 0x4040000
	ori	$2,$2,0x404
#APP
 # 1848 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 1849 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,15
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 1850 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L63:
#APP
 # 1852 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 1853 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1854 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1855 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1856 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1857 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 1858 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 1859 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 1860 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 1861 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 1863 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1864 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 1866 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1867 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1868 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 1869 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 1871 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 1872 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 1874 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 1875 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,5
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 1878 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1879 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1881 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1882 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1883 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1884 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1886 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1887 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1889 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1890 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1892 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1893 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1895 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1896 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1897 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1898 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1900 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1901 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1903 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1904 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 1905 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 1906 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 1907 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 1908 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 1909 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 1910 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 1911 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 1912 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 1915 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 1916 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1918 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1919 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1920 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 1921 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 1922 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 1923 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 1925 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 1926 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 1928 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 1929 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 1931 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 1932 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 1933 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 1934 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 1936 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 1937 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 1939 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 1940 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 1941 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 1942 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 1943 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L63
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,1179648			# 0x120000
	ori	$2,$2,0x3
#APP
 # 1951 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,3473408			# 0x350000
	ori	$3,$3,0x4
#APP
 # 1952 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 1953 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L64:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 1959 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 1960 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1961 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1962 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1964 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1965 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 1970 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 1971 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1972 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1973 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1975 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 1976 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 1977 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1978 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 1979 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1980 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1981 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 1982 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 1984 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 1985 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 1987 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 1988 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 1989 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 1990 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 1992 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 1993 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 1994 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 1995 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 1996 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 1997 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 1998 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 1999 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2000 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2002 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2003 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2005 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2006 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2007 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2008 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2010 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 2011 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 2012 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2013 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 2014 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2015 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2016 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2017 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2019 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2020 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2022 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2023 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2024 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2025 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2027 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 2028 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 2029 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2030 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 2031 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 2033 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 2034 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L64
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc31_c
	.align	2
	.ent	put_vc1_mspel_mc02_c
	.type	put_vc1_mspel_mc02_c, @function
put_vc1_mspel_mc02_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,151584768			# 0x9090000
	and	$5,$5,$3
	ori	$2,$2,0x909
#APP
 # 2105 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,16842752			# 0x1010000
	ori	$3,$3,0x101
#APP
 # 2106 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,524288			# 0x80000
	ori	$2,$2,0x8
#APP
 # 2107 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,1			# 0x1
	subu	$3,$3,$7
	sll	$2,$3,16
	addu	$2,$2,$3
#APP
 # 2108 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-2			# 0xfffffffffffffffe
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	subu	$3,$0,$3
	sll	$9,$2,1
	move	$7,$0
	li	$10,8			# 0x8
$L69:
#APP
 # 2110 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2111 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2112 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 2113 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2114 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2115 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 2116 "vc1dsp.c" 1
	S32LDIV xr1,$5,$6,0
 # 0 "" 2
 # 2117 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2118 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 2119 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2121 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2122 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 2124 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2125 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2126 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 2127 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr14,xr6,SS
 # 0 "" 2
 # 2129 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 2130 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 2132 "vc1dsp.c" 1
	Q16ACC xr5,xr13,xr12,xr6,AA
 # 0 "" 2
 # 2133 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,4
 # 0 "" 2
 # 2134 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
#NO_APP
	addu	$2,$5,$3
#APP
 # 2136 "vc1dsp.c" 1
	S32LDI xr1,$2,4
 # 0 "" 2
 # 2137 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 2139 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 2140 "vc1dsp.c" 1
	S32LDD xr11,$2,4
 # 0 "" 2
 # 2141 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2142 "vc1dsp.c" 1
	S32ALN xr7,xr11,xr9,$8
 # 0 "" 2
 # 2144 "vc1dsp.c" 1
	S32LDIV xr1,$2,$6,0
 # 0 "" 2
 # 2145 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 2147 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 2148 "vc1dsp.c" 1
	S32LDD xr11,$2,4
 # 0 "" 2
 # 2150 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2151 "vc1dsp.c" 1
	S32ALN xr8,xr11,xr9,$8
 # 0 "" 2
 # 2153 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2154 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2155 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr11
 # 0 "" 2
 # 2156 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr11,SS
 # 0 "" 2
 # 2158 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2159 "vc1dsp.c" 1
	Q16ADD xr0,xr11,xr2,xr11,AA,WW
 # 0 "" 2
 # 2161 "vc1dsp.c" 1
	Q16ACC xr9,xr13,xr12,xr11,SS
 # 0 "" 2
 # 2162 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr11,xr11,4
 # 0 "" 2
 # 2163 "vc1dsp.c" 1
	Q16SAT xr9,xr9,xr11
 # 0 "" 2
 # 2164 "vc1dsp.c" 1
	S32STD xr5,$4,0
 # 0 "" 2
 # 2165 "vc1dsp.c" 1
	S32STD xr9,$4,4
 # 0 "" 2
#NO_APP
	addiu	$7,$7,1
	addu	$4,$4,$6
	.set	noreorder
	.set	nomacro
	bne	$7,$10,$L69
	addu	$5,$2,$9
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc02_c
	.align	2
	.ent	put_vc1_mspel_mc12_c
	.type	put_vc1_mspel_mc12_c, @function
put_vc1_mspel_mc12_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,151584768			# 0x9090000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x909
#APP
 # 2217 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,16842752			# 0x1010000
	ori	$3,$3,0x101
#APP
 # 2218 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,3
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 2219 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L73:
#APP
 # 2221 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2222 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2223 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2224 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2225 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2226 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 2227 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 2228 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2229 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2230 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2232 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2233 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 2235 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2236 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2237 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 2238 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr14,xr6,SS
 # 0 "" 2
 # 2240 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 2241 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 2243 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 2244 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,3
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 2247 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2248 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2250 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2251 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2252 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2253 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2255 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2256 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2258 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2259 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2261 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2262 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2264 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2265 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2266 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2267 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2269 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2270 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2272 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2273 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 2274 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 2275 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 2276 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 2277 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 2278 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 2279 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 2280 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 2281 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 2284 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2285 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2287 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2288 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2289 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2290 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2291 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2292 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2294 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2295 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2297 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2298 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2300 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2301 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2302 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2303 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2305 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2306 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2308 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2309 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 2310 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 2311 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 2312 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L73
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,3473408			# 0x350000
	ori	$2,$2,0x4
#APP
 # 2320 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1179648			# 0x120000
	ori	$3,$3,0x3
#APP
 # 2321 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 2322 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,32			# 0x20
#APP
 # 2323 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L74:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 2329 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 2330 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2331 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2332 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2334 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2335 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 2340 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 2341 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2342 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2343 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2345 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 2346 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 2348 "vc1dsp.c" 1
	D32ACC xr9,xr12,xr13,xr10,AA
 # 0 "" 2
 # 2349 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 2350 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2351 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2352 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2353 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2355 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2356 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 2358 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2359 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2360 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2361 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2363 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 2364 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 2365 "vc1dsp.c" 1
	D32ACC xr11,xr12,xr13,xr10,AA
 # 0 "" 2
 # 2366 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 2367 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 2368 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2369 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2370 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2371 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2373 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr1,HW
 # 0 "" 2
 # 2374 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr1,SS,LW
 # 0 "" 2
 # 2376 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2377 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2378 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2379 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2381 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr1,AA,HW
 # 0 "" 2
 # 2382 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr1,SS,LW
 # 0 "" 2
 # 2383 "vc1dsp.c" 1
	D32ACC xr9,xr12,xr13,xr1,AA
 # 0 "" 2
 # 2384 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr1,7
 # 0 "" 2
 # 2385 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2386 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2387 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2388 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2390 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr1,HW
 # 0 "" 2
 # 2391 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr1,SS,LW
 # 0 "" 2
 # 2393 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2394 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2395 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2396 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2398 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr1,AA,HW
 # 0 "" 2
 # 2399 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr1,SS,LW
 # 0 "" 2
 # 2401 "vc1dsp.c" 1
	D32ACC xr11,xr12,xr13,xr1,AA
 # 0 "" 2
 # 2402 "vc1dsp.c" 1
	D32SARL xr1,xr11,xr1,7
 # 0 "" 2
 # 2403 "vc1dsp.c" 1
	Q16SAT xr1,xr1,xr9
 # 0 "" 2
 # 2405 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 2406 "vc1dsp.c" 1
	S32STD xr1,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L74
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc12_c
	.align	2
	.ent	put_vc1_mspel_mc22_c
	.type	put_vc1_mspel_mc22_c, @function
put_vc1_mspel_mc22_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,151584768			# 0x9090000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x909
#APP
 # 2481 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,16842752			# 0x1010000
	ori	$3,$3,0x101
#APP
 # 2482 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,1
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 2483 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L79:
#APP
 # 2485 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2486 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2487 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2488 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2489 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2490 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 2491 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 2492 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2493 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2494 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2496 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2497 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 2499 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2500 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2501 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 2502 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr14,xr6,SS
 # 0 "" 2
 # 2504 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 2505 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 2507 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 2508 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,1
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 2511 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2512 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2514 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2515 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2516 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2517 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2519 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2520 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2522 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2523 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2525 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2526 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2528 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2529 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2530 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2531 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2533 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2534 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2536 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2537 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,1
 # 0 "" 2
 # 2538 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 2539 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 2540 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 2541 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 2542 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 2543 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 2544 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 2545 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 2548 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2549 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2551 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2552 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2553 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2554 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2555 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2556 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2558 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2559 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2561 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2562 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2564 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2565 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2566 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2567 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2569 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2570 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2572 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2573 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,1
 # 0 "" 2
 # 2574 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 2575 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 2576 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L79
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,589824			# 0x90000
	ori	$2,$2,0x1
#APP
 # 2585 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,64			# 0x40
	subu	$3,$3,$7
#APP
 # 2586 "vc1dsp.c" 1
	S32I2M xr13,$3
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L80:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 2592 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 2593 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2594 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2595 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2597 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2598 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 2603 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 2604 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2605 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2606 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2608 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 2609 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 2610 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 2611 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 2612 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2613 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2614 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2615 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2617 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2618 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 2620 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2621 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2622 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2623 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2625 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 2626 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 2627 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 2628 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 2629 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 2630 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2631 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2632 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2633 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2635 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2636 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2638 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2639 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2640 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2641 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2643 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 2644 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 2645 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2646 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 2647 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2648 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2649 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2650 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2652 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2653 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2655 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2656 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2657 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2658 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2660 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 2661 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 2662 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2663 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 2664 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 2666 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 2667 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L80
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc22_c
	.align	2
	.ent	put_vc1_mspel_mc32_c
	.type	put_vc1_mspel_mc32_c, @function
put_vc1_mspel_mc32_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,151584768			# 0x9090000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x909
#APP
 # 2743 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,16842752			# 0x1010000
	ori	$3,$3,0x101
#APP
 # 2744 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,3
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 2745 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L85:
#APP
 # 2747 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 2748 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2749 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2750 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2751 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2752 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 2753 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 2754 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 2755 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 2756 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 2758 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2759 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 2761 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2762 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2763 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr15,xr6
 # 0 "" 2
 # 2764 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr14,xr6,SS
 # 0 "" 2
 # 2766 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 2767 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 2769 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 2770 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,3
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 2773 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2774 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2776 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2777 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2778 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2779 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2781 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2782 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2784 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2785 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2787 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2788 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2790 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2791 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2792 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2793 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2795 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2796 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2798 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2799 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 2800 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 2801 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 2802 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 2803 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 2804 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 2805 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 2806 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 2807 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 2810 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 2811 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2813 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2814 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2815 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 2816 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 2817 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 2818 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 2820 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 2821 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 2823 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 2824 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 2826 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 2827 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 2828 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr15,xr13
 # 0 "" 2
 # 2829 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr14,xr13,SS
 # 0 "" 2
 # 2831 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 2832 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 2834 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 2835 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 2836 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 2837 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 2838 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L85
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,1179648			# 0x120000
	ori	$2,$2,0x3
#APP
 # 2846 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,3473408			# 0x350000
	ori	$3,$3,0x4
#APP
 # 2847 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 2848 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L86:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 2854 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 2855 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2856 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2857 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2859 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2860 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 2865 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 2866 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2867 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2868 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2870 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 2871 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 2872 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 2873 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 2874 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2875 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2876 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2877 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2879 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 2880 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 2882 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2883 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2884 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2885 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2887 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 2888 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 2889 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 2890 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 2891 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 2892 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2893 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2894 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2895 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2897 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2898 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2900 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2901 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2902 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2903 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2905 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 2906 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 2907 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2908 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 2909 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 2910 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 2911 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 2912 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 2914 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 2915 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 2917 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 2918 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 2919 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 2920 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 2922 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 2923 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 2924 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 2925 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 2926 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 2928 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 2929 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L86
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc32_c
	.align	2
	.ent	put_vc1_mspel_mc03_c
	.type	put_vc1_mspel_mc03_c, @function
put_vc1_mspel_mc03_c:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,303169536			# 0x12120000
	move	$9,$4
	and	$5,$5,$3
	ori	$2,$2,0x1212
#APP
 # 3003 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,50528256			# 0x3030000
	ori	$3,$3,0x303
#APP
 # 3004 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,892665856			# 0x35350000
	ori	$2,$2,0x3535
#APP
 # 3005 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,67371008			# 0x4040000
	ori	$3,$3,0x404
#APP
 # 3006 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	li	$4,1			# 0x1
	subu	$4,$4,$7
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 3007 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,2097152			# 0x200000
	ori	$3,$3,0x20
#APP
 # 3008 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	li	$2,-2			# 0xfffffffffffffffe
	sll	$4,$6,1
	addu	$4,$4,$6
	subu	$2,$2,$6
	subu	$4,$0,$4
	sll	$7,$2,1
	move	$3,$0
	li	$10,8			# 0x8
$L91:
#APP
 # 3010 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 3011 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3012 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 3013 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3014 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3015 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 3016 "vc1dsp.c" 1
	S32LDIV xr1,$5,$6,0
 # 0 "" 2
 # 3017 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3018 "vc1dsp.c" 1
	S32LDIV xr5,$5,$6,0
 # 0 "" 2
 # 3019 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3021 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3022 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 3024 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3025 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 3026 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr13,xr6
 # 0 "" 2
 # 3027 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr12,xr6,SS
 # 0 "" 2
 # 3029 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 3030 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 3032 "vc1dsp.c" 1
	Q16ACC xr5,xr10,xr11,xr6,AA
 # 0 "" 2
 # 3033 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,6
 # 0 "" 2
 # 3034 "vc1dsp.c" 1
	Q16SAT xr5,xr5,xr6
 # 0 "" 2
#NO_APP
	addu	$2,$5,$4
#APP
 # 3036 "vc1dsp.c" 1
	S32LDI xr1,$2,4
 # 0 "" 2
 # 3037 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 3039 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 3040 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3041 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3042 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr9,$8
 # 0 "" 2
 # 3044 "vc1dsp.c" 1
	S32LDIV xr1,$2,$6,0
 # 0 "" 2
 # 3045 "vc1dsp.c" 1
	S32LDD xr2,$2,4
 # 0 "" 2
 # 3047 "vc1dsp.c" 1
	S32LDIV xr9,$2,$6,0
 # 0 "" 2
 # 3048 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3050 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3051 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr9,$8
 # 0 "" 2
 # 3053 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3054 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr14,xr2,SS
 # 0 "" 2
 # 3055 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr13,xr6
 # 0 "" 2
 # 3056 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr12,xr6,SS
 # 0 "" 2
 # 3058 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3059 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 3061 "vc1dsp.c" 1
	Q16ACC xr9,xr10,xr11,xr6,SS
 # 0 "" 2
 # 3062 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr6,xr6,6
 # 0 "" 2
 # 3063 "vc1dsp.c" 1
	Q16SAT xr9,xr9,xr6
 # 0 "" 2
 # 3064 "vc1dsp.c" 1
	S32STD xr5,$9,0
 # 0 "" 2
 # 3065 "vc1dsp.c" 1
	S32STD xr9,$9,4
 # 0 "" 2
#NO_APP
	addiu	$3,$3,1
	addu	$9,$9,$6
	.set	noreorder
	.set	nomacro
	bne	$3,$10,$L91
	addu	$5,$2,$7
	.set	macro
	.set	reorder

	j	$31
	.end	put_vc1_mspel_mc03_c
	.align	2
	.ent	put_vc1_mspel_mc13_c
	.type	put_vc1_mspel_mc13_c, @function
put_vc1_mspel_mc13_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,303169536			# 0x12120000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x1212
#APP
 # 3117 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,892665856			# 0x35350000
	ori	$3,$3,0x3535
#APP
 # 3118 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,50528256			# 0x3030000
	ori	$2,$2,0x303
#APP
 # 3119 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,67371008			# 0x4040000
	ori	$3,$3,0x404
#APP
 # 3120 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,15
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 3121 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L95:
#APP
 # 3123 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 3124 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3125 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3126 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3127 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3128 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 3129 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 3130 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3131 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3132 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3134 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3135 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 3137 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3138 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3139 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 3140 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 3142 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 3143 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 3145 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 3146 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,5
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 3149 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3150 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3152 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3153 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3154 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3155 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3157 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3158 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3160 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3161 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3163 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3164 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3166 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3167 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3168 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3169 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3171 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3172 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3174 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3175 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 3176 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 3177 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 3178 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 3179 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 3180 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 3181 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 3182 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 3183 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 3186 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3187 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3189 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3190 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3191 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3192 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3193 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3194 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3196 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3197 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3199 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3200 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3202 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3203 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3204 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3205 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3207 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3208 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3210 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3211 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 3212 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 3213 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 3214 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L95
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,3473408			# 0x350000
	ori	$2,$2,0x4
#APP
 # 3222 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,1179648			# 0x120000
	ori	$3,$3,0x3
#APP
 # 3223 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 3224 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$3,32			# 0x20
#APP
 # 3225 "vc1dsp.c" 1
	S32I2M xr12,$3
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L96:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 3231 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 3232 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3233 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3234 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3236 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3237 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 3242 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 3243 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3244 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3245 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3247 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 3248 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 3250 "vc1dsp.c" 1
	D32ACC xr9,xr12,xr13,xr10,AA
 # 0 "" 2
 # 3251 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 3252 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3253 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3254 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3255 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3257 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3258 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 3260 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3261 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3262 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3263 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3265 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 3266 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 3267 "vc1dsp.c" 1
	D32ACC xr11,xr12,xr13,xr10,AA
 # 0 "" 2
 # 3268 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 3269 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 3270 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3271 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3272 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3273 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3275 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr1,HW
 # 0 "" 2
 # 3276 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr1,SS,LW
 # 0 "" 2
 # 3278 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3279 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3280 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3281 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3283 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr1,AA,HW
 # 0 "" 2
 # 3284 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr1,SS,LW
 # 0 "" 2
 # 3285 "vc1dsp.c" 1
	D32ACC xr9,xr12,xr13,xr1,AA
 # 0 "" 2
 # 3286 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr1,7
 # 0 "" 2
 # 3287 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3288 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3289 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3290 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3292 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr1,HW
 # 0 "" 2
 # 3293 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr1,SS,LW
 # 0 "" 2
 # 3295 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3296 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3297 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3298 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3300 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr1,AA,HW
 # 0 "" 2
 # 3301 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr1,SS,LW
 # 0 "" 2
 # 3303 "vc1dsp.c" 1
	D32ACC xr11,xr12,xr13,xr1,AA
 # 0 "" 2
 # 3304 "vc1dsp.c" 1
	D32SARL xr1,xr11,xr1,7
 # 0 "" 2
 # 3305 "vc1dsp.c" 1
	Q16SAT xr1,xr1,xr9
 # 0 "" 2
 # 3307 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 3308 "vc1dsp.c" 1
	S32STD xr1,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L96
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc13_c
	.align	2
	.ent	put_vc1_mspel_mc23_c
	.type	put_vc1_mspel_mc23_c, @function
put_vc1_mspel_mc23_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,303169536			# 0x12120000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x1212
#APP
 # 3383 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,892665856			# 0x35350000
	ori	$3,$3,0x3535
#APP
 # 3384 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,50528256			# 0x3030000
	ori	$2,$2,0x303
#APP
 # 3385 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,67371008			# 0x4040000
	ori	$3,$3,0x404
#APP
 # 3386 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,3
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 3387 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L101:
#APP
 # 3389 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 3390 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3391 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3392 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3393 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3394 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 3395 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 3396 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3397 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3398 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3400 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3401 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 3403 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3404 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3405 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 3406 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 3408 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 3409 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 3411 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 3412 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,3
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 3415 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3416 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3418 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3419 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3420 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3421 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3423 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3424 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3426 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3427 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3429 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3430 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3432 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3433 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3434 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3435 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3437 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3438 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3440 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3441 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 3442 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 3443 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 3444 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 3445 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 3446 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 3447 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 3448 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 3449 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 3452 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3453 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3455 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3456 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3457 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3458 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3459 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3460 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3462 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3463 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3465 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3466 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3468 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3469 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3470 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3471 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3473 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3474 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3476 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3477 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,3
 # 0 "" 2
 # 3478 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 3479 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 3480 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L101
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,589824			# 0x90000
	ori	$2,$2,0x1
#APP
 # 3488 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,64			# 0x40
	subu	$3,$3,$7
#APP
 # 3489 "vc1dsp.c" 1
	S32I2M xr13,$3
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L102:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 3495 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 3496 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3497 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3498 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3500 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3501 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 3506 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 3507 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3508 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3509 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3511 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 3512 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 3513 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 3514 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 3515 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3516 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3517 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3518 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3520 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3521 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 3523 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3524 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3525 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3526 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3528 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr10,AA,HW
 # 0 "" 2
 # 3529 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr10,SS,LW
 # 0 "" 2
 # 3530 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 3531 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 3532 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 3533 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3534 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3535 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3536 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3538 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 3539 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 3541 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3542 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3543 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3544 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3546 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 3547 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 3548 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 3549 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 3550 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3551 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3552 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3553 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3555 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 3556 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 3558 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3559 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3560 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3561 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3563 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr7,xr12,AA,HW
 # 0 "" 2
 # 3564 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr8,xr12,SS,LW
 # 0 "" 2
 # 3565 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 3566 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 3567 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 3569 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 3570 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L102
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc23_c
	.align	2
	.ent	put_vc1_mspel_mc33_c
	.type	put_vc1_mspel_mc33_c, @function
put_vc1_mspel_mc33_c:
	.set	nomips16
	.frame	$sp,184,$31		# vars= 176, regs= 0/0, args= 0, gp= 8
	.mask	0x00000000,0
	.fmask	0x00000000,0
	addiu	$sp,$sp,-184
	.cprestore	0
	addiu	$5,$5,-1
	subu	$5,$5,$6
	andi	$3,$5,0x3
	li	$2,4			# 0x4
	subu	$8,$2,$3
	li	$3,-4			# 0xfffffffffffffffc
	li	$2,303169536			# 0x12120000
	move	$9,$6
	move	$10,$4
	and	$5,$5,$3
	ori	$2,$2,0x1212
#APP
 # 3647 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,892665856			# 0x35350000
	ori	$3,$3,0x3535
#APP
 # 3648 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,50528256			# 0x3030000
	ori	$2,$2,0x303
#APP
 # 3649 "vc1dsp.c" 1
	S32I2M xr11,$2
 # 0 "" 2
#NO_APP
	li	$3,67371008			# 0x4040000
	ori	$3,$3,0x404
#APP
 # 3650 "vc1dsp.c" 1
	S32I2M xr10,$3
 # 0 "" 2
#NO_APP
	addiu	$4,$7,15
	sll	$2,$4,16
	addu	$2,$2,$4
#APP
 # 3651 "vc1dsp.c" 1
	S32I2M xr12,$2
 # 0 "" 2
#NO_APP
	li	$2,-4			# 0xfffffffffffffffc
	sll	$3,$6,1
	addu	$3,$3,$6
	subu	$2,$2,$6
	addiu	$14,$sp,8
	subu	$11,$0,$3
	sll	$12,$2,1
	move	$6,$14
	addiu	$13,$sp,184
$L107:
#APP
 # 3653 "vc1dsp.c" 1
	S32LDD xr1,$5,0
 # 0 "" 2
 # 3654 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3655 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3656 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3657 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3658 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$8
 # 0 "" 2
 # 3659 "vc1dsp.c" 1
	S32LDIV xr1,$5,$9,0
 # 0 "" 2
 # 3660 "vc1dsp.c" 1
	S32LDD xr2,$5,4
 # 0 "" 2
 # 3661 "vc1dsp.c" 1
	S32LDIV xr5,$5,$9,0
 # 0 "" 2
 # 3662 "vc1dsp.c" 1
	S32LDD xr6,$5,4
 # 0 "" 2
 # 3664 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3665 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$8
 # 0 "" 2
 # 3667 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3668 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3669 "vc1dsp.c" 1
	Q8MUL xr5,xr4,xr14,xr6
 # 0 "" 2
 # 3670 "vc1dsp.c" 1
	Q8MAC xr5,xr8,xr10,xr6,SS
 # 0 "" 2
 # 3672 "vc1dsp.c" 1
	Q16ADD xr0,xr5,xr1,xr5,AA,WW
 # 0 "" 2
 # 3673 "vc1dsp.c" 1
	Q16ADD xr0,xr6,xr2,xr6,AA,WW
 # 0 "" 2
 # 3675 "vc1dsp.c" 1
	Q16ACC xr5,xr12,xr0,xr6,AA
 # 0 "" 2
 # 3676 "vc1dsp.c" 1
	Q16SAR xr5,xr5,xr6,xr6,5
 # 0 "" 2
#NO_APP
	addu	$4,$5,$11
#APP
 # 3679 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3680 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3682 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3683 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3684 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3685 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3687 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3688 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3690 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3691 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3693 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3694 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3696 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3697 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3698 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3699 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3701 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3702 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3704 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3705 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 3706 "vc1dsp.c" 1
	S32M2I xr6, $3
 # 0 "" 2
#NO_APP
	sh	$3,0($6)
#APP
 # 3707 "vc1dsp.c" 1
	S32M2I xr6, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,2($6)
#APP
 # 3708 "vc1dsp.c" 1
	S32M2I xr5, $3
 # 0 "" 2
#NO_APP
	sh	$3,4($6)
#APP
 # 3709 "vc1dsp.c" 1
	S32M2I xr5, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,6($6)
#APP
 # 3710 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,8($6)
#APP
 # 3711 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,10($6)
#APP
 # 3712 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,12($6)
#APP
 # 3713 "vc1dsp.c" 1
	S32M2I xr9, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,14($6)
	addu	$4,$4,$11
#APP
 # 3716 "vc1dsp.c" 1
	S32LDI xr1,$4,4
 # 0 "" 2
 # 3717 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3719 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3720 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3721 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$8
 # 0 "" 2
 # 3722 "vc1dsp.c" 1
	S32ALN xr7,xr13,xr9,$8
 # 0 "" 2
 # 3723 "vc1dsp.c" 1
	S32LDIV xr1,$4,$9,0
 # 0 "" 2
 # 3724 "vc1dsp.c" 1
	S32LDD xr2,$4,4
 # 0 "" 2
 # 3726 "vc1dsp.c" 1
	S32LDIV xr9,$4,$9,0
 # 0 "" 2
 # 3727 "vc1dsp.c" 1
	S32LDD xr13,$4,4
 # 0 "" 2
 # 3729 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$8
 # 0 "" 2
 # 3730 "vc1dsp.c" 1
	S32ALN xr8,xr13,xr9,$8
 # 0 "" 2
 # 3732 "vc1dsp.c" 1
	Q8MUL xr1,xr7,xr15,xr2
 # 0 "" 2
 # 3733 "vc1dsp.c" 1
	Q8MAC xr1,xr3,xr11,xr2,SS
 # 0 "" 2
 # 3734 "vc1dsp.c" 1
	Q8MUL xr9,xr4,xr14,xr13
 # 0 "" 2
 # 3735 "vc1dsp.c" 1
	Q8MAC xr9,xr8,xr10,xr13,SS
 # 0 "" 2
 # 3737 "vc1dsp.c" 1
	Q16ADD xr0,xr9,xr1,xr9,AA,WW
 # 0 "" 2
 # 3738 "vc1dsp.c" 1
	Q16ADD xr0,xr13,xr2,xr13,AA,WW
 # 0 "" 2
 # 3740 "vc1dsp.c" 1
	Q16ACC xr9,xr12,xr0,xr13,SS
 # 0 "" 2
 # 3741 "vc1dsp.c" 1
	Q16SAR xr9,xr9,xr13,xr13,5
 # 0 "" 2
 # 3742 "vc1dsp.c" 1
	S32M2I xr13, $3
 # 0 "" 2
#NO_APP
	sh	$3,16($6)
#APP
 # 3743 "vc1dsp.c" 1
	S32M2I xr13, $2
 # 0 "" 2
#NO_APP
	sra	$2,$2,16
	sh	$2,18($6)
#APP
 # 3744 "vc1dsp.c" 1
	S32M2I xr9, $3
 # 0 "" 2
#NO_APP
	sh	$3,20($6)
	addiu	$6,$6,22
	.set	noreorder
	.set	nomacro
	bne	$6,$13,$L107
	addu	$5,$4,$12
	.set	macro
	.set	reorder

	li	$2,1179648			# 0x120000
	ori	$2,$2,0x3
#APP
 # 3752 "vc1dsp.c" 1
	S32I2M xr15,$2
 # 0 "" 2
#NO_APP
	li	$3,3473408			# 0x350000
	ori	$3,$3,0x4
#APP
 # 3753 "vc1dsp.c" 1
	S32I2M xr14,$3
 # 0 "" 2
#NO_APP
	li	$2,64			# 0x40
	subu	$2,$2,$7
#APP
 # 3754 "vc1dsp.c" 1
	S32I2M xr13,$2
 # 0 "" 2
#NO_APP
	li	$12,-4			# 0xfffffffffffffffc
	move	$8,$14
	li	$11,4			# 0x4
$L108:
	andi	$5,$8,0x3
	subu	$5,$11,$5
	and	$3,$8,$12
	addiu	$7,$5,-2
#APP
 # 3760 "vc1dsp.c" 1
	S32LDD xr1,$3,0
 # 0 "" 2
 # 3761 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3762 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3763 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3765 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3766 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr10,SS,LW
 # 0 "" 2
#NO_APP
	addiu	$2,$8,4
	andi	$4,$2,0x3
	subu	$4,$11,$4
	and	$2,$2,$12
	addiu	$6,$4,-2
#APP
 # 3771 "vc1dsp.c" 1
	S32LDD xr5,$2,0
 # 0 "" 2
 # 3772 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3773 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3774 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3776 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 3777 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 3778 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr10,AA
 # 0 "" 2
 # 3779 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr10,7
 # 0 "" 2
 # 3780 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3781 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3782 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3783 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3785 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr10,HW
 # 0 "" 2
 # 3786 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr10,SS,LW
 # 0 "" 2
 # 3788 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3789 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3790 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3791 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3793 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr10,AA,HW
 # 0 "" 2
 # 3794 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr10,SS,LW
 # 0 "" 2
 # 3795 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr10,AA
 # 0 "" 2
 # 3796 "vc1dsp.c" 1
	D32SARL xr10,xr11,xr10,7
 # 0 "" 2
 # 3797 "vc1dsp.c" 1
	Q16SAT xr10,xr10,xr9
 # 0 "" 2
 # 3798 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3799 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3800 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3801 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3803 "vc1dsp.c" 1
	D16MUL xr9,xr15,xr4,xr12,HW
 # 0 "" 2
 # 3804 "vc1dsp.c" 1
	D16MAC xr9,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 3806 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3807 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3808 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3809 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3811 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 3812 "vc1dsp.c" 1
	D16MAC xr9,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 3813 "vc1dsp.c" 1
	D32ACC xr9,xr0,xr13,xr12,AA
 # 0 "" 2
 # 3814 "vc1dsp.c" 1
	D32SARL xr9,xr9,xr12,7
 # 0 "" 2
 # 3815 "vc1dsp.c" 1
	S32LDI xr1,$3,4
 # 0 "" 2
 # 3816 "vc1dsp.c" 1
	S32LDD xr2,$3,4
 # 0 "" 2
 # 3817 "vc1dsp.c" 1
	S32ALN xr3,xr2,xr1,$5
 # 0 "" 2
 # 3818 "vc1dsp.c" 1
	S32ALN xr4,xr2,xr1,$7
 # 0 "" 2
 # 3820 "vc1dsp.c" 1
	D16MUL xr11,xr15,xr4,xr12,HW
 # 0 "" 2
 # 3821 "vc1dsp.c" 1
	D16MAC xr11,xr15,xr3,xr12,SS,LW
 # 0 "" 2
 # 3823 "vc1dsp.c" 1
	S32LDI xr5,$2,4
 # 0 "" 2
 # 3824 "vc1dsp.c" 1
	S32LDD xr6,$2,4
 # 0 "" 2
 # 3825 "vc1dsp.c" 1
	S32ALN xr7,xr6,xr5,$4
 # 0 "" 2
 # 3826 "vc1dsp.c" 1
	S32ALN xr8,xr6,xr5,$6
 # 0 "" 2
 # 3828 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr7,xr12,AA,HW
 # 0 "" 2
 # 3829 "vc1dsp.c" 1
	D16MAC xr11,xr14,xr8,xr12,SS,LW
 # 0 "" 2
 # 3830 "vc1dsp.c" 1
	D32ACC xr11,xr0,xr13,xr12,AA
 # 0 "" 2
 # 3831 "vc1dsp.c" 1
	D32SARL xr12,xr11,xr12,7
 # 0 "" 2
 # 3832 "vc1dsp.c" 1
	Q16SAT xr12,xr12,xr9
 # 0 "" 2
 # 3834 "vc1dsp.c" 1
	S32STD xr10,$10,0
 # 0 "" 2
 # 3835 "vc1dsp.c" 1
	S32STD xr12,$10,4
 # 0 "" 2
#NO_APP
	addiu	$8,$8,22
	.set	noreorder
	.set	nomacro
	bne	$13,$8,$L108
	addu	$10,$10,$9
	.set	macro
	.set	reorder

	.set	noreorder
	.set	nomacro
	j	$31
	addiu	$sp,$sp,184
	.set	macro
	.set	reorder

	.end	put_vc1_mspel_mc33_c
	.align	2
	.globl	ff_vc1dsp_init
	.ent	ff_vc1dsp_init
	.type	ff_vc1dsp_init, @function
ff_vc1dsp_init:
	.set	nomips16
	.frame	$sp,0,$31		# vars= 0, regs= 0/0, args= 0, gp= 0
	.mask	0x00000000,0
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
	
	lui	$2,%hi(put_vc1_mspel_mc33_c)
	lui	$3,%hi(vc1_inv_trans_8x8_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc33_c)
	addiu	$3,$3,%lo(vc1_inv_trans_8x8_c)
	sw	$2,3112($4)
	sw	$3,3028($4)
	lui	$2,%hi(vc1_inv_trans_4x8_c)
	lui	$3,%hi(vc1_inv_trans_8x4_c)
	addiu	$2,$2,%lo(vc1_inv_trans_4x8_c)
	addiu	$3,$3,%lo(vc1_inv_trans_8x4_c)
	lui	$28,%hi(__gnu_local_gp)
	sw	$2,3036($4)
	sw	$3,3032($4)
	lui	$2,%hi(vc1_inv_trans_4x4_c)
	lui	$3,%hi(vc1_h_overlap_c)
	addiu	$2,$2,%lo(vc1_inv_trans_4x4_c)
	addiu	$3,$3,%lo(vc1_h_overlap_c)
	addiu	$28,$28,%lo(__gnu_local_gp)
	sw	$2,3040($4)
	sw	$3,3048($4)
	lui	$2,%hi(vc1_v_overlap_c)
	lw	$3,%got(ff_put_vc1_mspel_mc00_c)($28)
	addiu	$2,$2,%lo(vc1_v_overlap_c)
	sw	$2,3044($4)
	sw	$3,3052($4)
	lui	$2,%hi(put_vc1_mspel_mc10_c)
	lui	$3,%hi(put_vc1_mspel_mc20_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc10_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc20_c)
	sw	$2,3056($4)
	sw	$3,3060($4)
	lui	$2,%hi(put_vc1_mspel_mc30_c)
	lui	$3,%hi(put_vc1_mspel_mc01_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc30_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc01_c)
	sw	$2,3064($4)
	sw	$3,3068($4)
	lui	$2,%hi(put_vc1_mspel_mc11_c)
	lui	$3,%hi(put_vc1_mspel_mc21_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc11_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc21_c)
	sw	$2,3072($4)
	sw	$3,3076($4)
	lui	$2,%hi(put_vc1_mspel_mc31_c)
	lui	$3,%hi(put_vc1_mspel_mc02_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc31_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc02_c)
	sw	$2,3080($4)
	sw	$3,3084($4)
	lui	$2,%hi(put_vc1_mspel_mc12_c)
	lui	$3,%hi(put_vc1_mspel_mc22_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc12_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc22_c)
	sw	$2,3088($4)
	sw	$3,3092($4)
	lui	$2,%hi(put_vc1_mspel_mc32_c)
	lui	$3,%hi(put_vc1_mspel_mc03_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc32_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc03_c)
	sw	$2,3096($4)
	sw	$3,3100($4)
	lui	$2,%hi(put_vc1_mspel_mc13_c)
	lui	$3,%hi(put_vc1_mspel_mc23_c)
	addiu	$2,$2,%lo(put_vc1_mspel_mc13_c)
	addiu	$3,$3,%lo(put_vc1_mspel_mc23_c)
	sw	$2,3104($4)
	j	$31
	sw	$3,3108($4)

	.set	macro
	.set	reorder
	.end	ff_vc1dsp_init
	.ident	"GCC: (GNU) 4.3.3"
