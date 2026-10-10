# Yutani-Skia-Holographic-Splash
A universal, threaded, and high-performance startup intro component for Delphi VCL applications, powered by Skia4Delphi.     
    
[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/LaMitaOne/Yutani-Skia-Holographic-Splash)    
     
<img width="272" height="303" alt="Unbenannt" src="https://github.com/user-attachments/assets/4596fef6-ed66-410e-a22c-737af6014f49" />
       
It renders a transparent, click-through overlay window and spawns a dynamic stream of particles that rain down from the top of the screen to seamlessly form a provided PNG logo and text. It features aggressive micro-hovering, holographic flicker, and a final glowing pulse before fading out smoothly.     
      
Features      
    
    Dynamic Content: Pass any PNG image and any text string.
    Non-Blocking: Runs entirely in its own high-precision timer thread.
    Click-Through: The overlay window lets users click through to your main application form while it animates.
    Pure Skia: Uses Skia4Delphi for crisp rendering, blur effects, and smooth 60+ FPS animations.
     
Usage   
   
Just instantiate the class, pass your logo path and text, and set AAutoStart to True.         
   
uses  Yutani.SkiaIntro;// Example: Start immediatelyvar Intro := TYutaniSkiaIntro.Create('C:\path\to\logo.png', 'MY APP', True);    
     
Sample Project Included    
   
The repository includes a sample project demonstrating how to use the component. The sample allows you to type custom text and select a custom PNG file via an TOpenDialog to instantly preview the intro with your own assets.    

part of Yutani Engine     
https://github.com/LaMitaOne/Yutani-Building-better-worlds      
