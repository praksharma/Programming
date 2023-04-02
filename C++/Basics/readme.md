## Modern C++
[This](https://www.reddit.com/r/cpp/comments/124hok1/moving_from_borland_c_to_modern_c/) reddit post tells you why in the world I am learning C++ again.

## Concept of namespaces

After the standardisation of C++ in 1998, the header files were replaced with header and each header contains a number of containers called theon in general called a namespace which contains different functions. On a Linux system, the C++ is installed at `/usr/include/c++/`.

Here is the content of iostream header.

```
#ifndef _GLIBCXX_IOSTREAM
#define _GLIBCXX_IOSTREAM 1

#pragma GCC system_header

#include <bits/c++config.h>
#include <ostream>
#include <istream>

namespace std _GLIBCXX_VISIBILITY(default)
{
_GLIBCXX_BEGIN_NAMESPACE_VERSION

 ///@{
  extern istream cin;		/// Linked to standard input
  extern ostream cout;		/// Linked to standard output
  extern ostream cerr;		/// Linked to standard error (unbuffered)
  extern ostream clog;		/// Linked to standard error (buffered)

#ifdef _GLIBCXX_USE_WCHAR_T
  extern wistream wcin;		/// Linked to standard input
  extern wostream wcout;	/// Linked to standard output
  extern wostream wcerr;	/// Linked to standard error (unbuffered)
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;

_GLIBCXX_END_NAMESPACE_VERSION
} // namespace

#endif /* _GLIBCXX_IOSTREAM */
```

In C++, a `namespaces` are used resolve conflicting functions or class with same names in two different libraries.

```
namespace ns1
    {
        int sort()
           {return 1;} 

    }
namespace ns2
    {
        int sort()
           {return 1;} 

    }
```
We can use `ns1::sort()` to call the first `sort()` method. No, in C++ this is called function not method.

