BITS 32
;TEST_FILE_META_BEGIN
;TEST_TYPE=TEST_F
;TEST_IGNOREFLAGS=
;TEST_FILE_META_END

; put 2 into ecx for future load into xmm0
mov ecx, 2
cvtsi2sd xmm0, ecx

;TEST_BEGIN_RECORDING
lea ecx, [esp-8]
movsd [ecx], xmm0
cvtss2sd xmm1, [ecx]
mov eax, 0
mov ecx, 2
;TEST_END_RECORDING

xor ecx, ecx
cvtsi2sd xmm0, ecx
cvtsi2sd xmm1, ecx
