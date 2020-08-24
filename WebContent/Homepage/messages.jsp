<jsp:include page="header.jsp"></jsp:include>
    <!-- HOME -->
    <section class="home-section section-hero overlay slanted" id="home-section">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-8 text-center">
            <h1>Messages</h1>
            <div class="mx-auto w-75">
              <p>What would you like to tell them now that it is too late?</p>
            </div>
          </div>
        </div>
      </div>
        
      <!-- VIDEO -->
      <div class="video-container">
        <video autoplay loop="true">
          <source type="video/mp4" src="videos/video.mp4">
        </video>
      </div>

      <a href="#next-section" class="smoothscroll scroll-button">
        <span class=" icon-keyboard_arrow_down"></span>
      </a>

    </section>

    <section class="site-section block__18514" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 mr-auto">
            <div class="border p-4">
              <ul class="list-unstyled block__47528 mb-0">
               <li><span class="active">Messages</span></li>
                <li><a href="address-book.jsp">Address Book</a></li>
                <li><a href="ceremony.jsp">Ceremony</a></li>
                <li><a href="memorial.jsp">Memorial</a></li>
                <li><a href="wish.jsp">Wish</a></li>
                <li><a href="vault.jsp">Vault</a></li>
              </ul>
            </div>
          </div>
          <div class="col-lg-8">
            <span class="text-primary d-block mb-5"><span class="icon-line-envelope display-1"></span></span>
            <h2 class="mb-4">Messages</h2>
            <p>Use this space to write messages to your parents, (grand)children, friends, colleagues, etcetera.
			Now is the time! It may seem strange, but how great would it be to receive a letter from someone who
			 has passed away?</p>
          </div>
        </div>
      </div>
    </section>


<jsp:include page="footer.html"></jsp:include>