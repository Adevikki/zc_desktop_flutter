import 'dart:io';

import 'package:zc_desktop_flutter/constants/app_strings.dart';
import 'package:zc_desktop_flutter/model/app_models.dart';
import 'package:zc_desktop_flutter/services/zuri_api/api.dart';

class FakeZuriApiService implements Api {
  @override
  Future<void> addLoggedInUserToOrganization(
      {required String organizationId, required String email, required token}) {
    // TODO: implement addLoggedInUserToOrganization
    throw UnimplementedError();
  }

  @override
  Future invitePeopleToOrganization(
      {required String organizationId,
      required List<String> email,
      required token}) async {
    await Future.delayed(Duration(seconds: 3));
    return {
      'status': 200,
      'message': 'Organization invite operation result',
      'data': {
        'InvalidEmails': null,
        'InviteIDs': [
          null,
          null,
          '6167068467dc381fc3b4db88',
          '6167068667dc381fc3b4db89'
        ]
      }
    };
  }

  @override
  Future<void> addUserToChannel(organizationId, channelId,
      {String? id,
      String? role_id,
      bool? is_admin,
      String? prop1,
      String? prop2,
      String? prop3}) {
    // TODO: implement addUserToChannel
    throw UnimplementedError();
  }

  @override
  Future confirmEmail({required String otpCode}) async {
    await Future.delayed(Duration(seconds: 2));
    return {'code': '200', 'message': ''};
  }

  @override
  Future createChannelsUsingOrgId(
      {required sessionId,
      required insertedOrganization,
      String? name,
      String? owner,
      String? description,
      bool? private}) {
    // TODO: implement createChannelsUsingOrgId
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> createOrganizationUsingEmail(
      {required String email, required token}) {
    // TODO: implement createOrganizationUsingEmail
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> createRoom(
      {User? currentUser, Users? user, String? orgId}) {
    // TODO: implement createRoom
    throw UnimplementedError();
  }

  @override
  Future fetchChannelMessages(
      {required String channelId, required String organizationId}) {
    // TODO: implement fetchChannelMessages
    throw UnimplementedError();
  }

  @override
  Future<String> fetchChannelSocketId(
      {required String channelId,
      required String organizationId,
      required token}) {
    // TODO: implement fetchChannelSocketId
    throw UnimplementedError();
  }

  @override
  Future fetchChannelsListUsingOrgId(
      {required String organizationId, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    List<Channel> channelsList = [
      Channel(
          id: '1',
          name: 'team-falcons',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '2',
          name: 'team-desktop',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '3',
          name: 'test-test',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '4',
          name: 'announcements',
          private: false,
          description: '',
          owner: ''),
      Channel(
          id: '5', name: 'general', private: false, description: '', owner: ''),
    ];

    return channelsList;
  }

  @override
  Future fetchDMs({orgId, userId}) async {
    await Future.delayed(Duration(seconds: 2));

    // TODO: implement fetchDMs
    throw UnimplementedError();
  }

  @override
  Future fetchFileListUsingOrgId({required String orgId, required token}) {
    // TODO: implement fetchFileListUsingOrgId
    throw UnimplementedError();
  }

  @override
  Future<List<Users>> fetchMemberListUsingOrgId(
      {required String organizationId, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    List<Users> userList = [
      Users(
        id: '1',
        profileImage: '',
        display_name: 'Eternity',
        name: 'Issac',
        bio: 'Mentor',
      ),
      Users(
        id: '2',
        profileImage: '',
        display_name: 'Kat',
        name: 'Katherine',
        bio: 'Intern',
      ),
      Users(
        id: '3',
        profileImage: '',
        display_name: 'Bernice',
        name: 'Bernice',
        bio: 'Intern',
      ),
      Users(
        id: '4',
        profileImage: '',
        display_name: 'Demmss',
        name: 'Ademola',
        bio: 'Intern',
      ),
      Users(
        id: '5',
        profileImage: '',
        display_name: 'protector',
        name: 'Toby',
        bio: 'Intern',
      ),
    ];
    return userList;
  }

  @override
  Future<Map<String, dynamic>> fetchOrganizationDetails(
      {required String organizationId, required token}) {
    // TODO: implement fetchOrganizationDetails
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> fetchOrganizationsListFromRemote(
      {required String email, required token}) async {
    await Future.delayed(Duration(seconds: 2));

    Map<String, dynamic> orgList = {
      'status': 200,
      'message': 'user organizations retrieved successfully',
      'data': <Organization>[
        Organization(id: '1', name: 'ZuriChat', workspaceUrl: '', logoUrl: ''),
        Organization(id: '2', name: 'HNGi8', workspaceUrl: '', logoUrl: ''),
        Organization(id: '3', name: 'HNGi9', workspaceUrl: '', logoUrl: ''),
        Organization(id: '4', name: 'Tamborin', workspaceUrl: '', logoUrl: ''),
        Organization(id: '5', name: 'ZuriMain', workspaceUrl: '', logoUrl: ''),
        Organization(
            id: '6', name: 'ZuriDesktop', workspaceUrl: '', logoUrl: ''),
      ].map((e) => e.toJson()).toList(),
    };
    return orgList;
  }

  @override
  Future<Map<String, dynamic>> fetchRoomMessages({roomId}) {
    // TODO: implement fetchRoomMessages
    throw UnimplementedError();
  }

  // @override
  // Future<Map<String, dynamic>> fetchUserDetails({String? userId}) {
  //   // TODO: implement fetchUserDetails
  //   throw UnimplementedError();
  // }

  @override
  Future<Map<String, dynamic>> getRoomInfo({roomId}) {
    // TODO: implement getRoomInfo
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getUserProfile({orgId, memberId}) {
    // TODO: implement getUserProfile
    throw UnimplementedError();
  }

  @override
  Future login({required String email, required String password}) async {
    await Future.delayed(Duration(seconds: 3));
    return {
      'code': 200,
      'data': {
        'session_id': 'string',
        'user': User(
                id: '79hdhuisksj',
                firstName: 'John',
                lastName: 'Doe',
                displayName: 'Protector',
                email: email,
                phone: '',
                status: 0,
                timeZone: '',
                createdAt: '',
                updatedAt: '',
                token: 'hkjsliy07oihslkhor7sihlks7')
            .toJson()
      },
      'message': 'string'
    };
  }

  @override
  Future<Map<String, dynamic>> markMessageAsRead(messageId) {
    // TODO: implement markMessageAsRead
    throw UnimplementedError();
  }

  @override
  Future requestPasswordResetCode({required String email}) async {
    await Future.delayed(Duration(seconds: 2));
    return {
      'status': '200',
      'message': 'Password reset code sent',
      'data': null
    };
  }

  @override
  Future sendMessageToChannel(
      {channel_id, senderId, message, organization_id}) {
    // TODO: implement sendMessageToChannel
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> sendMessageToDM({roomId, senderId, message}) {
    // TODO: implement sendMessageToDM
    throw UnimplementedError();
  }

  @override
  Future signOut(String token) async {
    await Future.delayed(Duration(seconds: 2));
    return {'code': '200', 'message': 'Logged out successfully'};
  }

  @override
  Future signup(
      {required String password,
      required String email,
      required String fName,
      required String lName}) async {
    await Future.delayed(Duration(seconds: 2));
    return {
      'created_at': '2021-09-07 11:22:06.932180',
      'deleted_at': '0001-01-01 00:00:00',
      'email': '$email',
      'email_verification': {
        'expired_at': '0001-01-01 00:00:00',
        'id': '61374b5e7ccea12370c5adec',
        'token': null,
        'verified': false
      },
      'first_name': '$fName',
      'id': '61374b5e7ccea12370c5adec',
      'last_name': '$lName',
      'password': '$password',
      'password_resets': null,
      'phone': '0123456789',
      'settings': null,
      'time_zone': '',
      'updated_at': '0001-01-01 00:00:00',
      'workspace_profiles': null,
      'workspaces': null
    };
  }

  @override
  Future updateUserPassword(
      {required String password, required String code}) async {
    await Future.delayed(Duration(seconds: 2));
    return {
      'code': '200',
      'data': null,
      'message': 'password confirm successful'
    };
  }

  @override
  Future verifyPasswordResetCode({required String resetCode}) async {
    await Future.delayed(Duration(seconds: 2));
    return {'code': '200', 'message': 'Password confirm successful'};
  }

  @override
  Future<void> createTodo(Todo todo, String token) async {
    await Future.delayed(Duration(seconds: 2));
  }

  @override
  Future<List<Todo>> fetchTodoList() async {
    await Future.delayed(Duration(seconds: 2));
    List<Todo> todoList = [
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
      Todo(
          userID: '48477b48y7bhn',
          type: 'text',
          title: TodoTitle,
          status: '',
          description: TodoTitle2),
    ];
    return todoList;
  }

  @override
  Future<Member> fetchMemberDetail(
      {required String organizationId,
      required String memberId,
      required String token}) {
    // TODO: implement fetchMemberDetail
    throw UnimplementedError();
  }

  @override
  Future<User> fetchUserDetail({required String userId}) {
    // TODO: implement fetchUserDetail
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getMemberDetails(
      {required String organizationId,
      required String memberId,
      required String token}) {
    // TODO: implement getMemberDetails
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> getUserDetails({required String userId}) {
    // TODO: implement getUserDetails
    throw UnimplementedError();
  }

  @override
  Future<Member> patchProfilePicture(
      {required String organizationId,
      required String memberId,
      required String token}) {
    // TODO: implement patchProfilePicture
    throw UnimplementedError();
  }

  @override
  Future removeUserFromChannel({
    required organizationId,
    required channelId,
    required memberId,
  }) {
    // TODO: implement removeUserFromChannel
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> UpdateUserDetails({
    required organizationId,
    required memberId,
    required token,
    String? bio,
    String? displayName,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? pronoun,
    String? timeZone,
  }) async {
    return {
      'status': 200,
      'message': 'user updated successfully',
      'bio': '',
      'display_name': '',
      'first_name': '',
      'last_name': '',
      'phone': '',
      'pronouns': '',
      'time_zone': ''
    };
  }

  @override
  Future<Map<String, dynamic>> UpdateUserPicture({
    required organizationId,
    required memberId,
    required token,
    File? img,
  }) async {
    return {
      'status': 200,
      'message': 'user updated successfully',
      'image_url': img,
    };
  }

//  @override
  //Future<Member> patchProfilePicture(
  //  {required String organizationId,
  //required String memberId,
  //required String token}) {
  // TODO: implement patchProfilePicture
  //throw UnimplementedError();
  // }
}
