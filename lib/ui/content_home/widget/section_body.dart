import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionBody extends StatefulWidget {
  final List listImages;
  final bool isList;
  final bool isLike;
  final String images;
  final String caption;
  final String userName;
  final String comment;
  final String avatar;
  final String likes;
  final String times;
  final String totalComments;

  const SectionBody(
      {Key key,
      this.listImages,
      this.isList = false,
      this.images,
      this.caption,
      this.likes,
      this.avatar,
      this.times,
      this.isLike,
      this.totalComments,
      this.userName,
      this.comment})
      : super(key: key);

  @override
  _SectionBodyState createState() => _SectionBodyState();
}

class _SectionBodyState extends State<SectionBody> {
  int currentSlideImages = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //HEADER SECTION
        headerSection(),

        //IMAGES
        images(),

        //ACTION BUTTON
        actionButtonSection(),

        //CAPTION COMMENT SECTION
        captionCommentSection(),
      ],
    );
  }

  Widget avaCircle() {
    return Container(
      height: 40,
      width: 40,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            Color(0xff8a3ab9),
            Color(0xffbc2a8d),
            Color(0xffe95950),
            Color(0xfffccc63),
          ],
        ),
        shape: BoxShape.circle,
      ),
      child: Container(
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage('${widget.avatar}')),
          border: Border.all(color: Colors.white, width: 2),
        ),
      ),
    );
  }

  Widget headerSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          avaCircle(),
          SizedBox(width: 8),
          Text(
            '${widget.userName}',
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
    );
  }

  Widget images() {
    return widget.isList == true
        ? CarouselSlider.builder(
            itemCount: widget.listImages.length,
            options: CarouselOptions(
              autoPlay: false,
              viewportFraction: 1.0,
              aspectRatio: 2 / 2,
              enableInfiniteScroll: false,
              onPageChanged: (i, r) {
                setState(() {
                  currentSlideImages = i;
                });
              },
            ),
            itemBuilder: (c, index, int) {
              return Container(
                child: Image.asset(widget.listImages[index]),
              );
            })
        : Container(child: Image.asset(widget.images));
  }

  Widget actionButtonSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    widget.isLike != null || widget.isLike == true
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: widget.isLike != null || widget.isLike == true
                        ? Colors.red
                        : Colors.black,
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.send,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 24),
          slideContainer(),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  visualDensity: VisualDensity.compact,
                  onPressed: () {},
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget slideContainer() {
    return widget.isList == true
        ? Row(
            children: widget.listImages.map((e) {
              var _index = widget.listImages.indexOf(e);
              return Container(
                height: 6,
                width: 6,
                margin: EdgeInsets.only(right: 4),
                decoration: BoxDecoration(
                    color: _index == currentSlideImages
                        ? Colors.blue
                        : Colors.grey,
                    shape: BoxShape.circle),
              );
            }).toList(),
          )
        : Container();
  }

  Widget captionCommentSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //LIKES
          Text(
            '${widget.likes} likes',
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 4),

          //CAPTION
          Row(
            children: [
              Text(
                '${widget.userName} ',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                ' ${widget.caption}',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),

          //COMMENT
          widget.totalComments != '0' && widget.totalComments != null
              ? Text(
                  'View all ${widget.totalComments} comments',
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                )
              : Container(),
          SizedBox(height: 4),

          //COMMENT FROM
          widget.totalComments != '0' && widget.totalComments != null
              ? Row(
                  children: [
                    Text(
                      '${widget.userName} ',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' ${widget.comment}',
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border, size: 14),
                  ],
                )
              : Container(),
          SizedBox(height: 4),

          //TIME SECTION
          Row(
            children: [
              Text(
                '${widget.times}  ',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              Container(
                height: 2,
                width: 2,
                color: Colors.black,
              ),
              Text(
                '  See Translation',
                style: GoogleFonts.roboto(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
