<template>
  <div class="navbar bg-base-100">
    <div class="navbar-start">
      <div class="dropdown">
        <div tabindex="0" role="button" class="btn btn-ghost btn-circle">
          <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor">
            <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h16M4 18h7" />
          </svg>
        </div>
        <ul
            tabindex="0"
            class="menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow">
          <li><a>Homepage</a></li>
          <li><a>Portfolio</a></li>
          <li><a>About</a></li>
        </ul>
      </div>
      <div class="tooltip tooltip-right" data-tip="Magic!">
        <button class="btn btn-ghost btn-circle" @click="make3D">
          <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="size-6">
            <path stroke-linecap="round" stroke-linejoin="round" d="M20.25 6.375c0 2.278-3.694 4.125-8.25 4.125S3.75 8.653 3.75 6.375m16.5 0c0-2.278-3.694-4.125-8.25-4.125S3.75 4.097 3.75 6.375m16.5 0v11.25c0 2.278-3.694 4.125-8.25 4.125s-8.25-1.847-8.25-4.125V6.375m16.5 0v3.75m-16.5-3.75v3.75m16.5 0v3.75C20.25 16.153 16.556 18 12 18s-8.25-1.847-8.25-4.125v-3.75m16.5 0c0 2.278-3.694 4.125-8.25 4.125s-8.25-1.847-8.25-4.125" />
          </svg>
        </button>
      </div>
    </div>
    <div class="navbar-center">
      <a class="btn btn-ghost text-xl">CourseBuddy</a>
    </div>
    <div class="navbar-end">
      <button class="btn btn-ghost btn-circle">
        <svg
            xmlns="http://www.w3.org/2000/svg"
            class="h-5 w-5"
            fill="none"
            viewBox="0 0 24 24"
            stroke="currentColor">
          <path
              stroke-linecap="round"
              stroke-linejoin="round"
              stroke-width="2"
              d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
        </svg>
      </button>
      <button class="btn btn-ghost btn-circle">
        <div class="indicator">
          <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor">
            <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M15 17h5l-1.405-1.405A2.032 2.032 0 0118 14.158V11a6.002 6.002 0 00-4-5.659V5a2 2 0 10-4 0v.341C7.67 6.165 6 8.388 6 11v3.159c0 .538-.214 1.055-.595 1.436L4 17h5m6 0v1a3 3 0 11-6 0v-1m6 0H9" />
          </svg>
          <span class="badge badge-xs badge-primary indicator-item"></span>
        </div>
      </button>
      <label class="swap swap-rotate ml-3">
        <!-- this hidden checkbox controls the state -->
        <input type="checkbox" class="theme-controller" value="dark" v-model="theme" />

        <!-- sun icon -->
        <svg
            class="swap-off h-5 w-5 fill-current"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24">
          <path
              d="M5.64,17l-.71.71a1,1,0,0,0,0,1.41,1,1,0,0,0,1.41,0l.71-.71A1,1,0,0,0,5.64,17ZM5,12a1,1,0,0,0-1-1H3a1,1,0,0,0,0,2H4A1,1,0,0,0,5,12Zm7-7a1,1,0,0,0,1-1V3a1,1,0,0,0-2,0V4A1,1,0,0,0,12,5ZM5.64,7.05a1,1,0,0,0,.7.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.41l-.71-.71A1,1,0,0,0,4.93,6.34Zm12,.29a1,1,0,0,0,.7-.29l.71-.71a1,1,0,1,0-1.41-1.41L17,5.64a1,1,0,0,0,0,1.41A1,1,0,0,0,17.66,7.34ZM21,11H20a1,1,0,0,0,0,2h1a1,1,0,0,0,0-2Zm-9,8a1,1,0,0,0-1,1v1a1,1,0,0,0,2,0V20A1,1,0,0,0,12,19ZM18.36,17A1,1,0,0,0,17,18.36l.71.71a1,1,0,0,0,1.41,0,1,1,0,0,0,0-1.41ZM12,6.5A5.5,5.5,0,1,0,17.5,12,5.51,5.51,0,0,0,12,6.5Zm0,9A3.5,3.5,0,1,1,15.5,12,3.5,3.5,0,0,1,12,15.5Z" />
        </svg>

        <!-- moon icon -->
        <svg
            class="swap-on h-5 w-5 fill-current"
            xmlns="http://www.w3.org/2000/svg"
            viewBox="0 0 24 24">
          <path
              d="M21.64,13a1,1,0,0,0-1.05-.14,8.05,8.05,0,0,1-3.37.73A8.15,8.15,0,0,1,9.08,5.49a8.59,8.59,0,0,1,.25-2A1,1,0,0,0,8,2.36,10.14,10.14,0,1,0,22,14.05,1,1,0,0,0,21.64,13Zm-9.5,6.69A8.14,8.14,0,0,1,7.08,5.22v.27A10.15,10.15,0,0,0,17.22,15.63a9.79,9.79,0,0,0,2.1-.22A8.11,8.11,0,0,1,12.14,19.73Z" />
        </svg>
      </label>
    </div>
  </div>
</template>

<script setup>
  const theme = defineModel({default: true})

  function make3D() {
    (() => {
      const SHOW_SIDES = false; // color sides of DOM nodes?
      const COLOR_SURFACE = true; // color tops of DOM nodes?
      const COLOR_RANDOM = false; // randomise color?
      const COLOR_HUE = 190; // hue in HSL (https://hslpicker.com)
      const MAX_ROTATION = 180; // set to 360 to rotate all the way round
      const THICKNESS = 20; // thickness of layers
      const DISTANCE = 10000; // ¯\\_(ツ)_/¯


      function getRandomColor() {
        const hue = Math.floor(Math.random() * 360);
        const saturation = 50 + Math.floor(Math.random() * 30);
        const lightness = 40 + Math.floor(Math.random() * 30);
        return `hsl(${hue}, ${saturation}%, ${lightness}%)`;
      }

      const getDOMDepth = element => [...element.children].reduce((max, child) => Math.max(max, getDOMDepth(child)), 0) + 1;
      const domDepthCache = getDOMDepth(document.body);
      const getColorByDepth = (depth, hue = 0, lighten = 0) => `hsl(${hue}, 75%, ${Math.min(10 + depth * (1 + 60 / domDepthCache), 90) + lighten}%)`;

      // Apply initial styles to the body to enable 3D perspective
      const body = document.body;
      body.style.overflow = "visible";
      body.style.transformStyle = "preserve-3d";
      body.style.perspective = DISTANCE;
      const perspectiveOriginX = (window.innerWidth / 2);
      const perspectiveOriginY = (window.innerHeight / 2);
      body.style.perspectiveOrigin = body.style.transformOrigin = `${perspectiveOriginX}px ${perspectiveOriginY}px`;
      traverseDOM(body, 0, 0, 0);

      document.addEventListener("mousemove", (event) => {
        const rotationY = (MAX_ROTATION * (1 - event.clientY / window.innerHeight) - (MAX_ROTATION / 2));
        const rotationX = (MAX_ROTATION * event.clientX / window.innerWidth - (MAX_ROTATION / 2));
        body.style.transform = `rotateX(${rotationY}deg) rotateY(${rotationX}deg)`;
      });

      // Create side faces for an element to give it a 3D appearance
      function createSideFaces(element, color) {
        if (!SHOW_SIDES) { return }
        const width = element.offsetWidth;
        const height = element.offsetHeight;
        const fragment = document.createDocumentFragment();

        // Helper function to create and style a face
        const createFace = ({ width, height, transform, transformOrigin, top, left, right, bottom }) => {
          const face = document.createElement('div');
          face.className = 'dom-3d-side-face';
          Object.assign(face.style, {
            transformStyle: "preserve-3d",
            backfaceVisibility: 'hidden',
            position: 'absolute',
            width: `${width}px`,
            height: `${height}px`,
            background: color,
            transform,
            transformOrigin,
            overflow: 'hidden',
            willChange: 'transform',
            top,
            left,
            right,
            bottom
          });
          fragment.appendChild(face);
        }

        // Top face
        createFace({
          width,
          height: THICKNESS,
          transform: `rotateX(-270deg) translateY(${-THICKNESS}px)`,
          transformOrigin: 'top',
          top: '0px',
          left: '0px',
        });

        // Right face
        createFace({
          width: THICKNESS,
          height,
          transform: 'rotateY(90deg)',
          transformOrigin: 'left',
          top: '0px',
          left: `${width}px`
        });

        // Bottom face
        createFace({
          width,
          height: THICKNESS,
          transform: `rotateX(-90deg) translateY(${THICKNESS}px)`,
          transformOrigin: 'bottom',
          bottom: '0px',
          left: '0px'
        });

        // Left face
        createFace({
          width: THICKNESS,
          height,
          transform: `translateX(${-THICKNESS}px) rotateY(-90deg)`,
          transformOrigin: 'right',
          top: '0px',
          left: '0px'
        });

        element.appendChild(fragment);
      }

      // Recursive function to traverse child nodes, apply 3D styles, and create side faces
      function traverseDOM(parentNode, depthLevel, offsetX, offsetY) {
        for (let children = parentNode.childNodes, childrenCount = children.length, i = 0; i < childrenCount; i++) {
          const childNode = children[i];
          if (!(1 === childNode.nodeType && !childNode.classList.contains('dom-3d-side-face'))) continue;
          const color = COLOR_RANDOM ? getRandomColor() : getColorByDepth(depthLevel, COLOR_HUE, -5);
          Object.assign(childNode.style, {
            transform: `translateZ(${THICKNESS}px)`,
            overflow: "visible",
            backfaceVisibility: "hidden",
            isolation: "auto",
            transformStyle: "preserve-3d",
            backgroundColor: COLOR_SURFACE ? color : getComputedStyle(childNode).backgroundColor,
            willChange: 'transform',
          });

          let updatedOffsetX = offsetX;
          let updatedOffsetY = offsetY;
          if (childNode.offsetParent === parentNode) {
            updatedOffsetX += parentNode.offsetLeft;
            updatedOffsetY += parentNode.offsetTop;
          }
          createSideFaces(childNode, color);
          traverseDOM(childNode, depthLevel + 1, updatedOffsetX, updatedOffsetY);
        }
      }
    })()
  }
</script>