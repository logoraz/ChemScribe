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


;; GNU Guix development manifest. To start the Guile REPL:
;;
;;   guix shell -m path/to/manifest.scm -- guile
;;
;;   For development,
;;
;;   guix shell -D /path/to/manifest.scm -- guile

(use-modules (guix packages)
             (gnu packages guile)
             (gnu packages guile-xyz)
             (gnu packages sdl))

(packages->manifest
 (list guile-next
       guile-hoot
       guile-sdl2
       sdl2
       sdl2-image
       sdl2-ttf
       sdl2-mixer))
