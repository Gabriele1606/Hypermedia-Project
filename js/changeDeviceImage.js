function changeDeviceImage(Swap) {
    var current = document.getElementById('mainImage');
    var imageToSwap =Swap;
    if(imageToSwap=='immagini/Smartphone/LG_G5_4.jpg'){
    	imageToSwap='immagini/Smartphone/LG_G5.jpg';
    	
    	current.setAttribute('src', imageToSwap);
    	document.getElementById("mainImage").className = "introImageSmartphones";
    }
   else if(imageToSwap=='immagini/Tablet/ALCATEL_3.jpg'){
   	imageToSwap='immagini/Tablet/ALCATEL.jpg';
   	current.setAttribute('src', imageToSwap);
   	document.getElementById("mainImage").className = "introImageSmartphones";
   }
   else if(imageToSwap=='immagini/Tablet/ACER_Iconia_4.jpg'){
   	imageToSwap='immagini/Tablet/ACER_Iconia.jpg';
   	current.setAttribute('src', imageToSwap);
   	document.getElementById("mainImage").className = "introImageSmartphones";
   }
    else{
    document.getElementById("mainImage").className = "introImageSecondarySmartphones";
    current.setAttribute('src', imageToSwap);
}
   
     window.scrollTo(0,0);
}