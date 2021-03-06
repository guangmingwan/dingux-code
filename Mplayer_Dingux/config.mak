# -------- Generated by configure -----------

LANG = C
MAN_LANG = 
TARGET_OS = Linux
DESTDIR =
prefix = $(DESTDIR)/usr/local
BINDIR = $(DESTDIR)/usr/local/bin
DATADIR = $(DESTDIR)/usr/local/share/mplayer
MANDIR = $(DESTDIR)/usr/local/share/man
CONFDIR = $(DESTDIR)/usr/local/etc/mplayer
LIBDIR = $(DESTDIR)/usr/local/lib
# FFmpeg uses libdir instead of LIBDIR
libdir = $(LIBDIR)
AR = ar
CC = mipsel-linux-gcc -mips32
CXX = mipsel-linux-gcc -mips32
HOST_CC = gcc
RANLIB = true
LDCONFIG = ldconfig
INSTALL = install
EXTRA_INC = -I/home/po/Dingux_Pro/Mplayer_free/jz4740-mplayer_jz-master/madlib/libmad-0.15.1b -I/usr/include/directfb  -I/usr/include/freetype2
EXTRAXX_INC = -I/home/po/Dingux_Pro/Mplayer_free/jz4740-mplayer_jz-master/madlib/libmad-0.15.1b -I/usr/include/directfb  -I/usr/include/freetype2 
OPTFLAGS = -Wdisabled-optimization -Wno-pointer-sign -Wdeclaration-after-statement -I. -I.. -I../libavutil -Wall -Wno-switch -Wpointer-arith -Wredundant-decls -O2   -pipe -ffast-math -fomit-frame-pointer -D_REENTRANT -DHAVE_CONFIG_H $(EXTRA_INC)
CXXFLAGS =  -I. -I.. -I../libavutil -Wall -Wno-switch -Wpointer-arith -Wredundant-decls -O2   -pipe -ffast-math -fomit-frame-pointer -D_REENTRANT -DHAVE_CONFIG_H -D__STDC_LIMIT_MACROS $(EXTRAXX_INC)
CFLAG_STACKREALIGN = 
INSTALLSTRIP = -s
CHARSET = 
HELP_FILE = help/help_mp-en.h

EXESUF = 

MPLAYER_NETWORK = yes
FTP = yes
STREAMING_LIVE555 = no
LIBNEMESI = no
NATIVE_RTSP = yes
VSTREAM = no
STREAM_CACHE = yes
DVBIN = yes
VIDIX = no
VIDIX_INTERNAL = no
VIDIX_EXTERNAL = no
CONFIG_PP = yes
MP3LAME = no
LIBMENU = yes

MP3LIB = no
LIBA52 = yes
LIBMPEG2 = yes
TREMOR_INTERNAL = yes
TREMOR_LOW = no
FAAD = yes

SPEEX = yes
MUSEPACK = no

UNRARLIB = yes
PNG = yes
JPEG = yes
GIF = yes

EXTRALIBS = 
EXTRA_LIB = -Wl,-z,noexecstack -L/home/po/Dingux_Pro/Mplayer_free/jz4740-mplayer_jz-master/madlib/libmad-0.15.1b/.libs  -liconv -lncurses -lpng -lz -ljpeg -lungif -lfreetype -lz -lz -llzo2 -lmad -lspeex -ltheora -logg -lpthread -ldl -rdynamic  -lm
EXTRALIBS_MPLAYER =  -ldirectfb
EXTRALIBS_MENCODER = 

HAVE_MLIB = no
HAVE_PTHREADS = yes
HAVE_W32THREADS = no

HAVE_XVMC_ACCEL = no

HAVE_SYS_MMAN_H = yes
HAVE_POSIX_SELECT = yes

NEED_GETTIMEOFDAY    = no
NEED_GLOB    = no
NEED_SETENV  = no
NEED_SHMEM   = yes
NEED_STRSEP  = no
NEED_SWAB    = no
NEED_VSSCANF = no

# for FFmpeg
SRC_PATH=..
BUILD_ROOT=..
LIBPREF=lib
LIBSUF=.a
LIB=$(LIBPREF)$(NAME)$(LIBSUF)

# audio output
OSS = yes
ALSA = no
ALSA5 = 
ALSA9 = 
ALSA1X = 

# input/demuxer/codecs
JOYSTICK = no
LIRC = no
APPLE_REMOTE = auto
TV = yes
TV_V4L  = yes
TV_V4L1 = yes
TV_V4L2 = yes
TV_BSDBT848 = auto
TV_TELETEXT = yes
AUDIO_INPUT = yes
PVR = yes
VCD = yes
DVDREAD = no
DVDREAD_INTERNAL = no
DVDCSS_INTERNAL = no
DVDNAV = no
WIN32DLL = no
QTX_CODECS = auto
REAL_CODECS = yes
XANIM_CODECS = yes
LIBAVUTIL = yes
LIBAVUTIL_A = yes
LIBAVUTIL_SO = auto
LIBAVCODEC = yes
LIBAVCODEC_A = yes
LIBAVCODEC_SO = auto
LIBAVFORMAT = yes
LIBAVFORMAT_A = yes
LIBAVFORMAT_SO = auto
LIBPOSTPROC = yes
LIBPOSTPROC_A = yes
LIBPOSTPROC_SO = auto
ZORAN = no
LIBLZO = yes
LIBDV = no
XVID4 = no
X264 = no
LIBNUT = no
LIBDCA = no
MPLAYER = yes
MENCODER = yes
CDDA = 
CDDB = no
BITMAP_FONT = yes
FREETYPE = yes
ASS = yes
LIBMAD = yes
LIBVORBIS = yes
LIBTHEORA = yes
FAAD_INTERNAL = yes
FAAD_FIXED = yes
LIBSMBCLIENT = no
XMMS_PLUGINS = no
MACOSX = auto
MACOSX_FINDER_SUPPORT = no
MACOSX_BUNDLE = auto
MACOSX_COREVIDEO = 
TOOLAME=no
TWOLAME=no
FAAC=no
CONFIG_LIBAMR=
CONFIG_LIBAMR_NB=no
CONFIG_LIBAMR_WB=no
CONFIG_AASC_DECODER=yes
CONFIG_AMV_DECODER=yes
CONFIG_ASV1_DECODER=yes
CONFIG_ASV2_DECODER=yes
CONFIG_AVS_DECODER=yes
CONFIG_BETHSOFTVID_DECODER=yes
CONFIG_BMP_DECODER=yes
CONFIG_C93_DECODER=yes
CONFIG_CAVS_DECODER=yes
CONFIG_CINEPAK_DECODER=yes
CONFIG_CLJR_DECODER=yes
CONFIG_CSCD_DECODER=yes
CONFIG_CYUV_DECODER=yes
CONFIG_DNXHD_DECODER=yes
CONFIG_DSICINVIDEO_DECODER=yes
CONFIG_DVVIDEO_DECODER=yes
CONFIG_DXA_DECODER=yes
CONFIG_EIGHTBPS_DECODER=yes
CONFIG_FFV1_DECODER=yes
CONFIG_FFVHUFF_DECODER=yes
CONFIG_FLASHSV_DECODER=yes
CONFIG_FLIC_DECODER=yes
CONFIG_FLV_DECODER=yes
CONFIG_FOURXM_DECODER=yes
CONFIG_FRAPS_DECODER=yes
CONFIG_GIF_DECODER=yes
CONFIG_H261_DECODER=yes
CONFIG_H263_DECODER=yes
CONFIG_H263I_DECODER=yes
CONFIG_H264_DECODER=yes
CONFIG_HUFFYUV_DECODER=yes
CONFIG_IDCIN_DECODER=yes
CONFIG_INDEO2_DECODER=yes
CONFIG_INDEO3_DECODER=yes
CONFIG_INTERPLAY_VIDEO_DECODER=yes
CONFIG_JPEGLS_DECODER=yes
CONFIG_KMVC_DECODER=yes
CONFIG_LOCO_DECODER=yes
CONFIG_MDEC_DECODER=yes
CONFIG_MJPEG_DECODER=yes
CONFIG_MJPEGB_DECODER=yes
CONFIG_MMVIDEO_DECODER=yes
CONFIG_MPEG1VIDEO_DECODER=yes
CONFIG_MPEG2VIDEO_DECODER=yes
CONFIG_MPEG4_DECODER=yes
CONFIG_MPEGVIDEO_DECODER=yes
CONFIG_MSMPEG4V1_DECODER=yes
CONFIG_MSMPEG4V2_DECODER=yes
CONFIG_MSMPEG4V3_DECODER=yes
CONFIG_MSRLE_DECODER=yes
CONFIG_MSVIDEO1_DECODER=yes
CONFIG_MSZH_DECODER=yes
CONFIG_NUV_DECODER=yes
CONFIG_PNG_DECODER=yes
CONFIG_PTX_DECODER=yes
CONFIG_QDRAW_DECODER=yes
CONFIG_QPEG_DECODER=yes
CONFIG_QTRLE_DECODER=yes
CONFIG_RAWVIDEO_DECODER=yes
CONFIG_ROQ_DECODER=yes
CONFIG_RPZA_DECODER=yes
CONFIG_RV10_DECODER=yes
CONFIG_RV20_DECODER=yes
CONFIG_SGI_DECODER=yes
CONFIG_SMACKER_DECODER=yes
CONFIG_SMC_DECODER=yes
CONFIG_SNOW_DECODER=yes
CONFIG_SP5X_DECODER=yes
CONFIG_SVQ1_DECODER=yes
CONFIG_SVQ3_DECODER=yes
CONFIG_TARGA_DECODER=yes
CONFIG_THEORA_DECODER=yes
CONFIG_THP_DECODER=yes
CONFIG_TIERTEXSEQVIDEO_DECODER=yes
CONFIG_TIFF_DECODER=yes
CONFIG_TRUEMOTION1_DECODER=yes
CONFIG_TRUEMOTION2_DECODER=yes
CONFIG_TSCC_DECODER=yes
CONFIG_TXD_DECODER=yes
CONFIG_ULTI_DECODER=yes
CONFIG_VC1_DECODER=yes
CONFIG_VCR1_DECODER=yes
CONFIG_VMDVIDEO_DECODER=yes
CONFIG_VMNC_DECODER=yes
CONFIG_VP3_DECODER=yes
CONFIG_VP5_DECODER=yes
CONFIG_VP6_DECODER=yes
CONFIG_VP6A_DECODER=yes
CONFIG_VP6F_DECODER=yes
CONFIG_VQA_DECODER=yes
CONFIG_WMV1_DECODER=yes
CONFIG_WMV2_DECODER=yes
CONFIG_WMV3_DECODER=yes
CONFIG_WNV1_DECODER=yes
CONFIG_XAN_WC3_DECODER=yes
CONFIG_XL_DECODER=yes
CONFIG_XSUB_DECODER=yes
CONFIG_ZLIB_DECODER=yes
CONFIG_ZMBV_DECODER=yes
CONFIG_AC3_DECODER=yes
CONFIG_ALAC_DECODER=yes
CONFIG_APE_DECODER=yes
CONFIG_ATRAC3_DECODER=yes
CONFIG_COOK_DECODER=yes
CONFIG_DCA_DECODER=yes
CONFIG_DSICINAUDIO_DECODER=yes
CONFIG_FLAC_DECODER=yes
CONFIG_IMC_DECODER=yes
CONFIG_MACE3_DECODER=yes
CONFIG_MACE6_DECODER=yes
CONFIG_MP2_DECODER=yes
CONFIG_MP3_DECODER=yes
CONFIG_MP3ADU_DECODER=yes
CONFIG_MP3ON4_DECODER=yes
CONFIG_MPC7_DECODER=yes
CONFIG_QDM2_DECODER=yes
CONFIG_RA_144_DECODER=yes
CONFIG_RA_288_DECODER=yes
CONFIG_SHORTEN_DECODER=yes
CONFIG_SMACKAUD_DECODER=yes
CONFIG_SONIC_DECODER=yes
CONFIG_TRUESPEECH_DECODER=yes
CONFIG_TTA_DECODER=yes
CONFIG_VMDAUDIO_DECODER=yes
CONFIG_VORBIS_DECODER=yes
CONFIG_WAVPACK_DECODER=yes
CONFIG_FIXWMAV1_DECODER=yes
CONFIG_FIXWMAV2_DECODER=yes
CONFIG_WS_SND1_DECODER=yes
CONFIG_PCM_ALAW_DECODER=yes
CONFIG_PCM_MULAW_DECODER=yes
CONFIG_PCM_S8_DECODER=yes
CONFIG_PCM_S16BE_DECODER=yes
CONFIG_PCM_S16LE_DECODER=yes
CONFIG_PCM_S24BE_DECODER=yes
CONFIG_PCM_S24DAUD_DECODER=yes
CONFIG_PCM_S24LE_DECODER=yes
CONFIG_PCM_S32BE_DECODER=yes
CONFIG_PCM_S32LE_DECODER=yes
CONFIG_PCM_U8_DECODER=yes
CONFIG_PCM_U16BE_DECODER=yes
CONFIG_PCM_U16LE_DECODER=yes
CONFIG_PCM_U24BE_DECODER=yes
CONFIG_PCM_U24LE_DECODER=yes
CONFIG_PCM_U32BE_DECODER=yes
CONFIG_PCM_U32LE_DECODER=yes
CONFIG_PCM_ZORK_DECODER=yes
CONFIG_INTERPLAY_DPCM_DECODER=yes
CONFIG_ROQ_DPCM_DECODER=yes
CONFIG_SOL_DPCM_DECODER=yes
CONFIG_XAN_DPCM_DECODER=yes
CONFIG_ADPCM_4XM_DECODER=yes
CONFIG_ADPCM_ADX_DECODER=yes
CONFIG_ADPCM_CT_DECODER=yes
CONFIG_ADPCM_EA_DECODER=yes
CONFIG_ADPCM_G726_DECODER=yes
CONFIG_ADPCM_IMA_AMV_DECODER=yes
CONFIG_ADPCM_IMA_DK3_DECODER=yes
CONFIG_ADPCM_IMA_DK4_DECODER=yes
CONFIG_ADPCM_IMA_QT_DECODER=yes
CONFIG_ADPCM_IMA_SMJPEG_DECODER=yes
CONFIG_ADPCM_IMA_WAV_DECODER=yes
CONFIG_ADPCM_IMA_WS_DECODER=yes
CONFIG_ADPCM_MS_DECODER=yes
CONFIG_ADPCM_SBPRO_2_DECODER=yes
CONFIG_ADPCM_SBPRO_3_DECODER=yes
CONFIG_ADPCM_SBPRO_4_DECODER=yes
CONFIG_ADPCM_SWF_DECODER=yes
CONFIG_ADPCM_THP_DECODER=yes
CONFIG_ADPCM_XA_DECODER=yes
CONFIG_ADPCM_YAMAHA_DECODER=yes
CONFIG_DVBSUB_DECODER=yes
CONFIG_DVDSUB_DECODER=yes
CONFIG_ASV1_ENCODER=yes
CONFIG_ASV2_ENCODER=yes
CONFIG_BMP_ENCODER=yes
CONFIG_DVVIDEO_ENCODER=yes
CONFIG_FFV1_ENCODER=yes
CONFIG_FFVHUFF_ENCODER=yes
CONFIG_FLASHSV_ENCODER=yes
CONFIG_FLV_ENCODER=yes
CONFIG_GIF_ENCODER=yes
CONFIG_H261_ENCODER=yes
CONFIG_H263_ENCODER=yes
CONFIG_H263P_ENCODER=yes
CONFIG_HUFFYUV_ENCODER=yes
CONFIG_JPEGLS_ENCODER=yes
CONFIG_LJPEG_ENCODER=yes
CONFIG_MJPEG_ENCODER=yes
CONFIG_MPEG1VIDEO_ENCODER=yes
CONFIG_MPEG2VIDEO_ENCODER=yes
CONFIG_MPEG4_ENCODER=yes
CONFIG_MSMPEG4V1_ENCODER=yes
CONFIG_MSMPEG4V2_ENCODER=yes
CONFIG_MSMPEG4V3_ENCODER=yes
CONFIG_PAM_ENCODER=yes
CONFIG_PBM_ENCODER=yes
CONFIG_PGM_ENCODER=yes
CONFIG_PGMYUV_ENCODER=yes
CONFIG_PNG_ENCODER=yes
CONFIG_PPM_ENCODER=yes
CONFIG_QTRLE_ENCODER=yes
CONFIG_RAWVIDEO_ENCODER=yes
CONFIG_ROQ_ENCODER=yes
CONFIG_RV10_ENCODER=yes
CONFIG_RV20_ENCODER=yes
CONFIG_SGI_ENCODER=yes
CONFIG_SNOW_ENCODER=yes
CONFIG_SVQ1_ENCODER=yes
CONFIG_TARGA_ENCODER=yes
CONFIG_TIFF_ENCODER=yes
CONFIG_WMV1_ENCODER=yes
CONFIG_WMV2_ENCODER=yes
CONFIG_ZLIB_ENCODER=yes
CONFIG_ZMBV_ENCODER=yes
CONFIG_AC3_ENCODER=yes
CONFIG_FLAC_ENCODER=yes
CONFIG_LIB=yes
CONFIG_MP2_ENCODER=yes
CONFIG_SONIC_ENCODER=yes
CONFIG_SONIC_LS_ENCODER=yes
CONFIG_VORBIS_ENCODER=yes
CONFIG_WMAV1_ENCODER=yes
CONFIG_WMAV2_ENCODER=yes
CONFIG_PCM_ALAW_ENCODER=yes
CONFIG_PCM_MULAW_ENCODER=yes
CONFIG_PCM_S8_ENCODER=yes
CONFIG_PCM_S16BE_ENCODER=yes
CONFIG_PCM_S16LE_ENCODER=yes
CONFIG_PCM_S24BE_ENCODER=yes
CONFIG_PCM_S24DAUD_ENCODER=yes
CONFIG_PCM_S24LE_ENCODER=yes
CONFIG_PCM_S32BE_ENCODER=yes
CONFIG_PCM_S32LE_ENCODER=yes
CONFIG_PCM_U8_ENCODER=yes
CONFIG_PCM_U16BE_ENCODER=yes
CONFIG_PCM_U16LE_ENCODER=yes
CONFIG_PCM_U24BE_ENCODER=yes
CONFIG_PCM_U24LE_ENCODER=yes
CONFIG_PCM_U32BE_ENCODER=yes
CONFIG_PCM_U32LE_ENCODER=yes
CONFIG_PCM_ZORK_ENCODER=yes
CONFIG_ROQ_DPCM_ENCODER=yes
CONFIG_ADPCM_4XM_ENCODER=yes
CONFIG_ADPCM_ADX_ENCODER=yes
CONFIG_ADPCM_CT_ENCODER=yes
CONFIG_ADPCM_EA_ENCODER=yes
CONFIG_ADPCM_G726_ENCODER=yes
CONFIG_ADPCM_IMA_DK3_ENCODER=yes
CONFIG_ADPCM_IMA_DK4_ENCODER=yes
CONFIG_ADPCM_IMA_QT_ENCODER=yes
CONFIG_ADPCM_IMA_SMJPEG_ENCODER=yes
CONFIG_ADPCM_IMA_WAV_ENCODER=yes
CONFIG_ADPCM_IMA_WS_ENCODER=yes
CONFIG_ADPCM_MS_ENCODER=yes
CONFIG_ADPCM_SBPRO_2_ENCODER=yes
CONFIG_ADPCM_SBPRO_3_ENCODER=yes
CONFIG_ADPCM_SBPRO_4_ENCODER=yes
CONFIG_ADPCM_SWF_ENCODER=yes
CONFIG_ADPCM_XA_ENCODER=yes
CONFIG_ADPCM_YAMAHA_ENCODER=yes
CONFIG_DVBSUB_ENCODER=yes
CONFIG_DVDSUB_ENCODER=yes
CONFIG_AAC_PARSER=yes
CONFIG_AC3_PARSER=yes
CONFIG_CAVSVIDEO_PARSER=yes
CONFIG_DCA_PARSER=yes
CONFIG_DVBSUB_PARSER=yes
CONFIG_DVDSUB_PARSER=yes
CONFIG_H261_PARSER=yes
CONFIG_H263_PARSER=yes
CONFIG_H264_PARSER=yes
CONFIG_MJPEG_PARSER=yes
CONFIG_MPEG4VIDEO_PARSER=yes
CONFIG_MPEGAUDIO_PARSER=yes
CONFIG_MPEGVIDEO_PARSER=yes
CONFIG_PNM_PARSER=yes
CONFIG_VC1_PARSER=yes
CONFIG_AAC_DEMUXER=yes
CONFIG_AC3_DEMUXER=yes
CONFIG_AIFF_DEMUXER=yes
CONFIG_AMR_DEMUXER=yes
CONFIG_APC_DEMUXER=yes
CONFIG_APE_DEMUXER=yes
CONFIG_ASF_DEMUXER=yes
CONFIG_AU_DEMUXER=yes
CONFIG_AVI_DEMUXER=yes
CONFIG_AVS_DEMUXER=yes
CONFIG_BETHSOFTVID_DEMUXER=yes
CONFIG_C93_DEMUXER=yes
CONFIG_DAUD_DEMUXER=yes
CONFIG_DSICIN_DEMUXER=yes
CONFIG_DTS_DEMUXER=yes
CONFIG_DV_DEMUXER=yes
CONFIG_DXA_DEMUXER=yes
CONFIG_EA_DEMUXER=yes
CONFIG_FFM_DEMUXER=yes
CONFIG_FLAC_DEMUXER=yes
CONFIG_FLIC_DEMUXER=yes
CONFIG_FLV_DEMUXER=yes
CONFIG_FOURXM_DEMUXER=yes
CONFIG_GIF_DEMUXER=yes
CONFIG_GXF_DEMUXER=yes
CONFIG_H261_DEMUXER=yes
CONFIG_H263_DEMUXER=yes
CONFIG_H264_DEMUXER=yes
CONFIG_IDCIN_DEMUXER=yes
CONFIG_IMAGE2_DEMUXER=yes
CONFIG_IMAGE2PIPE_DEMUXER=yes
CONFIG_INGENIENT_DEMUXER=yes
CONFIG_IPMOVIE_DEMUXER=yes
CONFIG_LIB=yes
CONFIG_M4V_DEMUXER=yes
CONFIG_MATROSKA_DEMUXER=yes
CONFIG_MJPEG_DEMUXER=yes
CONFIG_MM_DEMUXER=yes
CONFIG_MMF_DEMUXER=yes
CONFIG_MOV_DEMUXER=yes
CONFIG_MP3_DEMUXER=yes
CONFIG_MPC_DEMUXER=yes
CONFIG_MPEGPS_DEMUXER=yes
CONFIG_MPEGTS_DEMUXER=yes
CONFIG_MPEGTSRAW_DEMUXER=yes
CONFIG_MPEGVIDEO_DEMUXER=yes
CONFIG_MTV_DEMUXER=yes
CONFIG_MXF_DEMUXER=yes
CONFIG_NSV_DEMUXER=yes
CONFIG_NUT_DEMUXER=yes
CONFIG_NUV_DEMUXER=yes
CONFIG_OGG_DEMUXER=yes
CONFIG_PCM_ALAW_DEMUXER=yes
CONFIG_PCM_MULAW_DEMUXER=yes
CONFIG_PCM_S16BE_DEMUXER=yes
CONFIG_PCM_S16LE_DEMUXER=yes
CONFIG_PCM_S8_DEMUXER=yes
CONFIG_PCM_U16BE_DEMUXER=yes
CONFIG_PCM_U16LE_DEMUXER=yes
CONFIG_PCM_U8_DEMUXER=yes
CONFIG_RAWVIDEO_DEMUXER=yes
CONFIG_RM_DEMUXER=yes
CONFIG_ROQ_DEMUXER=yes
CONFIG_SEGAFILM_DEMUXER=yes
CONFIG_SHORTEN_DEMUXER=yes
CONFIG_SMACKER_DEMUXER=yes
CONFIG_SOL_DEMUXER=yes
CONFIG_STR_DEMUXER=yes
CONFIG_SWF_DEMUXER=yes
CONFIG_THP_DEMUXER=yes
CONFIG_TIERTEXSEQ_DEMUXER=yes
CONFIG_TTA_DEMUXER=yes
CONFIG_TXD_DEMUXER=yes
CONFIG_VC1_DEMUXER=yes
CONFIG_VMD_DEMUXER=yes
CONFIG_VOC_DEMUXER=yes
CONFIG_WAV_DEMUXER=yes
CONFIG_WC3_DEMUXER=yes
CONFIG_WSAUD_DEMUXER=yes
CONFIG_WSVQA_DEMUXER=yes
CONFIG_WV_DEMUXER=yes
CONFIG_YUV4MPEGPIPE_DEMUXER=yes
CONFIG_AC3_MUXER=yes
CONFIG_ADTS_MUXER=yes
CONFIG_AIFF_MUXER=yes
CONFIG_AMR_MUXER=yes
CONFIG_ASF_MUXER=yes
CONFIG_ASF_STREAM_MUXER=yes
CONFIG_AU_MUXER=yes
CONFIG_AVI_MUXER=yes
CONFIG_CRC_MUXER=yes
CONFIG_DV_MUXER=yes
CONFIG_FFM_MUXER=yes
CONFIG_FLAC_MUXER=yes
CONFIG_FLV_MUXER=yes
CONFIG_FRAMECRC_MUXER=yes
CONFIG_GIF_MUXER=yes
CONFIG_GXF_MUXER=yes
CONFIG_H261_MUXER=yes
CONFIG_H263_MUXER=yes
CONFIG_H264_MUXER=yes
CONFIG_IMAGE2_MUXER=yes
CONFIG_IMAGE2PIPE_MUXER=yes
CONFIG_M4V_MUXER=yes
CONFIG_MATROSKA_MUXER=yes
CONFIG_MATROSKA_AUDIO_MUXER=yes
CONFIG_MJPEG_MUXER=yes
CONFIG_MMF_MUXER=yes
CONFIG_MOV_MUXER=yes
CONFIG_MP2_MUXER=yes
CONFIG_MP3_MUXER=yes
CONFIG_MP4_MUXER=yes
CONFIG_MPEG1SYSTEM_MUXER=yes
CONFIG_MPEG1VCD_MUXER=yes
CONFIG_MPEG1VIDEO_MUXER=yes
CONFIG_MPEG2DVD_MUXER=yes
CONFIG_MPEG2SVCD_MUXER=yes
CONFIG_MPEG2VIDEO_MUXER=yes
CONFIG_MPEG2VOB_MUXER=yes
CONFIG_MPEGTS_MUXER=yes
CONFIG_MPJPEG_MUXER=yes
CONFIG_NULL_MUXER=yes
CONFIG_NUT_MUXER=yes
CONFIG_PCM_ALAW_MUXER=yes
CONFIG_PCM_MULAW_MUXER=yes
CONFIG_PCM_S16BE_MUXER=yes
CONFIG_PCM_S16LE_MUXER=yes
CONFIG_PCM_S8_MUXER=yes
CONFIG_PCM_U16BE_MUXER=yes
CONFIG_PCM_U16LE_MUXER=yes
CONFIG_PCM_U8_MUXER=yes
CONFIG_PSP_MUXER=yes
CONFIG_RAWVIDEO_MUXER=yes
CONFIG_RM_MUXER=yes
CONFIG_ROQ_MUXER=yes
CONFIG_SWF_MUXER=yes
CONFIG_TG2_MUXER=yes
CONFIG_TGP_MUXER=yes
CONFIG_VOC_MUXER=yes
CONFIG_WAV_MUXER=yes
CONFIG_YUV4MPEGPIPE_MUXER=yes
CONFIG_DUMP_EXTRADATA_BSF=yes
CONFIG_H264_MP4TOANNEXB_BSF=yes
CONFIG_IMX_DUMP_HEADER_BSF=yes
CONFIG_MJPEGA_DUMP_HEADER_BSF=yes
CONFIG_MP3_HEADER_COMPRESS_BSF=yes
CONFIG_MP3_HEADER_DECOMPRESS_BSF=yes
CONFIG_NOISE_BSF=yes
CONFIG_REMOVE_EXTRADATA_BSF=yes
CONFIG_LIBFAAC=
CONFIG_LIBMP3LAME=
CONFIG_LIBXVID=
CONFIG_LIBX264=no
CONFIG_ZLIB=yes
CONFIG_GPL=yes
CONFIG_ENCODERS=yes
CONFIG_MUXERS=yes
RADIO=no
RADIO_CAPTURE=no
VIDIX_CYBERBLADE=no
VIDIX_IVTV=no
VIDIX_MACH64=no
VIDIX_MGA=no
VIDIX_MGA_CRTC2=no
VIDIX_NVIDIA=no
VIDIX_PM2=no
VIDIX_PM3=no
VIDIX_RADEON=no
VIDIX_RAGE128=no
VIDIX_SAVAGE=no
VIDIX_SIS=no
VIDIX_UNICHROME=no

# --- Some stuff for autoconfigure ----
ARCH_SGI_MIPS = yes

TARGET_WIN32 = no
TARGET_CPU=sgi-mips
HAVE_MMX   = auto
HAVE_MMX2   = auto
HAVE_3DNOW   = auto
HAVE_3DNOWEX   = auto
HAVE_SSE   = auto
HAVE_CMOV   = auto
HAVE_ALTIVEC   = auto
HAVE_ARMV5TE   = auto
HAVE_ARMV6   = auto
HAVE_IWMMXT   = auto
HAVE_VIS   = 

# --- GUI stuff ---
GUI = no

# --- libvo stuff ---
VO_SRCS =  vo_tga.c vo_md5sum.c vo_directfb2.c vo_dfbmga.c vo_fbdev.c vo_fbdev2.c vo_png.c vo_jpeg.c vo_pnm.c vo_gif89a.c vo_v4l2.c

# --- libao2 stuff ---
AO_SRCS =  ao_v4l2.c ao_oss.c

# --- libaf stuff ---
AF_SRCS = 

