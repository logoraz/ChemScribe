;;;; chemscribe.lisp

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

(in-package :chemscribe)


(print "Hi!")

;; Enable slynk to connect to emacs (or lem).
(bt:make-thread
 (lambda () (create-server :port 4008 :dont-close t)))
