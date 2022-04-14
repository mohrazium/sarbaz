part of components;

class ContactTile extends StatelessWidget {
  const ContactTile({
    Key? key,
    required this.fullName,
    required this.mobileNumber,
    this.homeAddress,
    this.workAddress,
    this.description,
    required this.editContact,
    required this.deleteContact,
  }) : super(key: key);

  final String mobileNumber;
  final String fullName;
  final String? homeAddress;
  final String? workAddress;
  final String? description;
  final Function? editContact;
  final Function? deleteContact;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [_buildTile(), _buildMoreButton()]);
  }

  _buildTile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(fullName),
        Row(
          children: [
            const Text(Strings.mobileNumber + " : "),
            Text(mobileNumber),
          ],
        ),
        homeAddress != null
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(Strings.homeAddress + " : "),
                  Expanded(
                    child: Text(
                      homeAddress ?? "",
                      maxLines: homeAddress != null && homeAddress!.length > 40
                          ? 4
                          : 1,
                      overflow: TextOverflow.ellipsis,
                      textWidthBasis: TextWidthBasis.parent,
                    ),
                  ),
                ],
              )
            : Container(),
        workAddress != null
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(Strings.workAddress + " : "),
                  Expanded(
                    child: Text(
                      workAddress ?? "",
                      maxLines: workAddress != null && workAddress!.length > 40
                          ? 4
                          : 1,
                      overflow: TextOverflow.ellipsis,
                      textWidthBasis: TextWidthBasis.parent,
                    ),
                  ),
                ],
              )
            : Container(),
        description != null
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(Strings.description + " : "),
                  Expanded(
                      child: Text(
                    description ?? "",
                    maxLines:
                        description != null && description!.length > 40 ? 4 : 1,
                    overflow: TextOverflow.ellipsis,
                    textWidthBasis: TextWidthBasis.parent,
                  )),
                ],
              )
            : Container(),
      ],
    );
  }

  Widget _buildMoreButton() {
    return Positioned(
        top: -10,
        left: -10,
        child: PopupMenuButton<String>(
          shape: const RoundedRectangleBorder(
            side: BorderSide(width: 1.0, style: BorderStyle.none),
            borderRadius: BorderRadius.all(Radius.circular(kBorderRadius)),
          ),
          icon: const Icon(EvaIcons.moreVertical),
          onSelected: (String value) {
            if (value == Strings.edit) {
              editContact!();
            } else if (value == Strings.delete) {
              deleteContact!();
            }
          },
          itemBuilder: (BuildContext context) {
            List<String> buttons = [Strings.edit, Strings.delete];
            return buttons.map<PopupMenuItem<String>>((String value) {
              return PopupMenuItem(
                  child:
                      SizedBox(width: kTextFieldWidth / 3, child: Text(value)),
                  value: value);
            }).toList();
          },
        ));
  }
}
