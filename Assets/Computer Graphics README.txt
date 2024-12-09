Computer Graphics README

Color Correction:
I modified a LUT using Photopea to try to saturate the primary colors more, but it ended up reducing red. The thought behind making the primary colors more saturated was to try to make the game seem more colorful and engaging to kids. The Color grading also unintentionally introduced a pseudo pixelation effect that I think still fits pretty well given the graphics of the original game.

Scrolling Texture:
For the scrolling Texture I made a background using Photopea that looks vaguely similar to the one seen in game, and had it scroll along as time passes since a scrolling background is a common thing in Mario games. 
To do this I had a my shader take in a scroll X and scroll Y variable to determine where in the scroll the background was (the Scroll Y was never used because I didn't need my background vertically scrolling). I also had a Speed variable that determines how fast the background scrolls across the screen. In the surface shader, the scroll X and Y are updated based on the built in time variable, and then applied to the texture by adding them to the UV input as an offset. The final background is then output as the albedo

Other Shaders: 
Rim Light:
for coin because it highlights the coin as something that you want to collect, and it just gives it a nice glow from any angle you look at it from 
For the rim light, I used three variables: a Rim Color, Rim Power, and a Main Color. The Rim color determines the color of the rim, which is applied to the emission of the surface shader, the rim power determines how strong the rim is, with the higher rim power meaning that the outline is weaker, and the main color is for the albedo of the object, a texture could have worked too, but I did not have the time to make one.

Toon Shader:
I decided to put a toon shader on the goomba projectile because I thought it matched with the aesthetic of the game for the projectiles to have toon shaders. 
To do this, I inputted a toon ramp texture, and used a surface shader to do the calculations of the toon ramp lighting, which just moves the toon ramp texture around on the sphere based on where the light is coming from. The toon ramp also had a color parameter that was used to change the albedo of the material.

Other Stuff:
I added move functionality to the camera, so you can look around and move around freely
