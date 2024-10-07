;;;; chemscribe.scm - ChemScribe Guix Package Manifest

;;; Copyright 2024 Erik P Almaraz <erikalmaraz@fastmail.com>
;;;
;;; Licensed under the Apache License, Version 2.0 (the "License");
;;; you may not use this file except in compliance with the License.
;;; You may obtain a copy of the License at
;;;
;;;     http://www.apache.org/licenses/LICENSE-2.0
;;;
;;; Unless required by applicable law or agreed to in writing, software
;;; distributed under the License is distributed on an "AS IS" BASIS,
;;; WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;;; See the License for the specific language governing permissions and
;;; limitations under the License.

;;; Commentary:
;;;
;;; Currently lists out packages intended to develop ChemScribe
;;; see: https://guix.gnu.org/en/manual/devel/en/html_node/Writing-Manifests.html
;;;
;;; GNU Guix development manifest.  To start the CL REPL:
;;;
;;;   guix shell -m path/to/chemscribe-gtk4.scm -- sbcl
;;;
;;;   For development, it is perhaps best to run a pure shell, i.e.
;;;
;;;   guix shell --pure -m /path/to/chemscribe-gtk4.scm -- clasp-cl

(specifications->manifest
 '("cl-bordeaux-threads"
   "cl-lparallel"
   "cl-slynk"
   "cl-json"
   "cl-lisp-unit2"))
