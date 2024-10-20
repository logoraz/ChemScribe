;; Copyright 2024 Erik P Almaraz
;;
;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;;
;;     http://www.apache.org/licenses/LICENSE-2.0
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS,
;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.

;; Just playing around with guile-sdl2 here for now...
(define-module (chemscribe)
  #:use-module (sdl2)
  #:use-module (sdl2 render)
  #:use-module (sdl2 surface)
  #:use-module (sdl2 video))

(define (draw ren)
  (let* ((surface (load-bmp "chemscribe/assets/logoraz-symbol.bmp"))
         (texture (surface->texture ren surface)))
    (clear-renderer ren)
    (render-copy ren texture)
    (present-renderer ren)
    (sleep 5)))

(sdl-init)

(call-with-window (make-window)
                  (lambda (window)
                    (call-with-renderer (make-renderer window) draw)))

(sdl-quit)
