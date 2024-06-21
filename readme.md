اسکریپت autohotkey  اجازه  جابجایی در virtual desktop های ویندوز به صورت دوبعدی رو به شما میده ویندوز این قابلیت رو نداره و صرفا میتونید به صورت خطی بین دسکتاپ ها جابجا بشید 
# برای اجرا باید چیکار کنم؟

۱. نه تا دسکتاپ بسازید *فعلا تعداد دسکتاپ ها هارد کد شده و فقط برای نه تا دسکتاپ کار میکنه*
بعد به این لینک برید و نسخه v1.1 رو دانلود بکنید برنامه رایگانه
[AutoHotkey](https://www.autohotkey.com/)

۲. یه داینامیک لایببری رو دانلود بکنید *نترسید اونم اوپن سورسه لینکشم پایین تر هست*

من برای ویندوز ده این داینامیک لایبرری رو قرار دادم (خودم ویندوز ده دارم ) اما اگه ویندوز یازده هستید به این صفحه برید 
[Ciantic/VirtualDesktopAccessor: DLL for accessing Windows 11/10 Virtual Desktop features from e.g. AutoHotkey (github.com)](https://github.com/Ciantic/VirtualDesktopAccessor)

و کتابخونه مربوط به ویندوز ده رو دانلود بکنید  وفایل دانلود شده رو تو پوشه ای که اسکریپت قرار داره بذارید ، dll مربوط به ویندوز ده رو پاک کنید(قاعدتا رو ویندز یازده امتحانش نکردم )

۳. این قسمت به انتخاب خودتونه ولی من توصیه میکنم که  حتما دانلود بکنید 
[dankrusi/WindowsVirtualDesktopHelper: App to help manage Virtual Desktops for Windows 10 and Windows 11 (github.com)](https://github.com/dankrusi/WindowsVirtualDesktopHelper)

بهتون میگه که تو کدوم دسکتاپ هستید *و البته یه راه برای جابجایی هم بهتون میده باکنترل و شماره دسکتاپ میتونید جابجا بشید*

# چطوری استفاده کنم ؟

برای جابجا شدن کافیه از دکمه های 
ctrl+win+alt+arrow (up-down-right-left)

# باگی چیزی داره؟
*یه مشکل داره عدم فعال کردم دسکتاپ بعد از جابجاییه که فعلا با یه کلیک سعی کردم این ایرادم تا حدی برطرف بکنم ...* 
ویدیو دمو


https://github.com/gdrmehdi/grid/assets/42337477/91be9b98-a115-441f-b841-913c351d68ec





The AutoHotkey script allows you to move between Windows virtual desktops in a two-dimensional manner. Windows doesn't have this feature and only allows you to switch between desktops linearly.

# How to run it?

1.Create nine desktops. _Currently, the number of desktops is hardcoded and only works for nine desktops._

2.Then go to this link and download version v1.1. The program is free. [AutoHotkey](https://www.autohotkey.com/)

3.Download a dynamic library. _Don't worry, it’s open source too; the link is below._

I have provided the dynamic library for Windows 10 (I'm running  Windows 10), but if you have Windows 11, go to this page: [Ciantic/VirtualDesktopAccessor: DLL for accessing Windows 11/10 Virtual Desktop features from e.g. AutoHotkey (github.com)](https://github.com/Ciantic/VirtualDesktopAccessor)

Download the library for Windows 10 and place the downloaded file in the folder where the script is located. Delete the DLL for Windows 10 (I haven’t tested it on Windows 11).

3. This part is optional, but I recommend downloading it: [dankrusi/WindowsVirtualDesktopHelper: App to help manage Virtual Desktops for Windows 10 and Windows 11 (github.com)](https://github.com/dankrusi/WindowsVirtualDesktopHelper)

It tells you which desktop you are on _and also provides a way to switch with control and the desktop number._

# How to use it?

To switch, just use the keys: ctrl + win + alt + arrow (up-down-right-left)

# Does it have any bugs?

_It has an issue where the desktop doesn’t activate after switching, which I have tried to partially fix with a click..._ Demo video:
https://github.com/gdrmehdi/grid/assets/42337477/91be9b98-a115-441f-b841-913c351d68ec
