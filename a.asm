.model tiny
.data
src_str         db      03h,05h,06h,0abh
dst_str         db      4 dup(?)
.code
.startup
                lea     si,src_str	; Store offset of source
                lea     di,dst_str	; Store offset of destination
                mov     cx,04h		; Number of bytes to be transfered
          rep   movsb
.exit
end


