 //全屏
  const full = document.getElementById('full');
  const exitFull = document.getElementById('exit');
  //进入
  full.addEventListener('click', () => {
      const elem = document.documentElement;
      if (elem.requestFullscreen) {
          elem.requestFullscreen();
      } else if (elem.mozRequestFullScreen) {
          elem.mozRequestFullScreen();
      } else if (elem.webkitRequestFullscreen) {
          elem.webkitRequestFullscreen();
      } else if (elem.msRequestFullscreen) {
          elem.msRequestFullscreen();
      }
      full.style.display = 'none';
      exitFull.style.display = 'inline-block';
  });
  //退出
  exitFull.addEventListener('click', () => {
      if (document.exitFullscreen) {
          document.exitFullscreen();
      } else if (document.mozCancelFullScreen) {
          document.mozCancelFullScreen();
      } else if (document.webkitExitFullscreen) {
          document.webkitExitFullscreen();
      } else if (document.msExitFullscreen) {
          document.msExitFullscreen();
      }
      full.style.display = 'inline-block';
      exitFull.style.display = 'none';
  });
  document.addEventListener('fullscreenchange', updateFullscreenIcon);
  document.addEventListener('mozfullscreenchange', updateFullscreenIcon);
  document.addEventListener('webkitfullscreenchange', updateFullscreenIcon);
  document.addEventListener('msfullscreenchange', updateFullscreenIcon);
  function updateFullscreenIcon() {
      const fullscreenElement = document.fullscreenElement || document.mozFullScreenElement || document.webkitFullscreenElement || document.msFullscreenElement;
      if (fullscreenElement) {
          full.style.display = 'none';
          exitFull.style.display = 'inline-block';
      } else {
          full.style.display = 'inline-block';
          exitFull.style.display = 'none';
      }
  }