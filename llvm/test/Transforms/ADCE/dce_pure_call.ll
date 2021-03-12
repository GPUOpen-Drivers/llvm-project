; Modifications Copyright (c) 2020 Advanced Micro Devices, Inc. All rights reserved.
; Notified per clause 4(b) of the license.
; RUN: opt -adce -S < %s | not grep call

declare i32 @strlen(i8*) readonly nounwind

define void @test() {
	call i32 @strlen( i8* null )		; <i32>:1 [#uses=0]
	ret void
}
