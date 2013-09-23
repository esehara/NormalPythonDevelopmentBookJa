Pythonと日本語の関係
====================

　この章では、Pythonと日本語の関係について書きたいと思います。

始めに
------

　PythonがRubyに比べて敷居が上がる理由の一つに、マルチバイト、
私たちの言語でいうならば「日本語」の処理が得意ではないという部分が
一つあげられます。

　貴方がPythonでなんらかの文字列を扱っているならば、
UnicodeEncodeErrorやUnicodeDecodeErrorに悩まされたことは
あるでしょう。

マジックコメント
-----------------------

　貴方がPythonの3系を扱っているならば、ソースコードは全て
UTF-8だと過程されているため、それほど問題にはならないのですが、
まだまだPython2系で開発しているところも多くありません。

　Python2系の場合、ソースコードの文字コードはまずAsciiとして解釈
されます。要するに英数字のみで解釈できるものだ、と理解します。
従って、ソースコードに日本語でコメントを残したい、あるいはメッセージに
日本語を出したいという場合、下のマジックコメントがないとエラーになってしまいます。

::

   SyntaxError: Non-ASCII character '\xe3' in file example/multibyte/error_no_magigcomment.py on line 1, but no encoding declared; see http://www.python.org/peps/pep-0263.html for details


　このようなエラーメッセージが出るのは、ソースコードがAsciiとして
認識されている、ということです。従って、Python2系では、下のような
マジックコメントを使うことによって回避します。

::
   # -*- coding:utf-8 -*-


* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
