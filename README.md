<p align="center">
<img src="https://cdn.imweb.me/thumbnail/20231120/9b1551ea109cf.png" width="40%" height="30%" title="px(픽셀) 크기 설정" alt="Calculator"></img>
</p>

# 📌 Schdule Management Application

>- ## ⚙ 구현 기능
>1. 일정 생성 및 등록
>2. 전체 일정 조회
>3. 선택 일정 조회
>4. 선택 일정 수정
>5. 선택 일정 삭제
>---
>- ## 👷‍♂️ API 명세서
> <table style="border: 2px;" align="center">
  <tr>
    <td> 기능</td>
    <td> Method </td>
    <td> URI </td>
    <td> Request </td>
    <td> Responese </td>
    <td> StatusCode </td>
  </tr><tr>
    <td > 일정 생성 및 등록 </td>
    <td > POST </td>
    <td > /api/schedules </td>
    <td > 
      {<br>
        "user_id" : user_id;,<br>
        "password" : password;,<br>
        "detail" : 'detail';
      <br>}
    </td>
    <td > 
      {<br>
        "id": schedule_id, <br>
        "user_id" : user_id,<br>
        "detail" : 'detail';<br>
      }
    </td>
    <td > 
      2xx : 성공<br> 
      4xx : 실패<br> 
    </td>
  </tr><tr>
    <td > 전체 일정 조회 </td>
    <td > GET </td>
    <td > /api/schedules </td>
    <td > - </td>
    <td > 전체 응답 정보 </td>
    <td > 
      2xx : 성공<br> 
      4xx : 실패<br>
    </td>
  </tr><tr>
    <td > 선택 일정 조회 </td>
    <td > GET </td>
    <td > /api/schedules/{scheduleId} </td>
    <td > - </td>
    <td > 
      {<br>
        "id" : schedule_id ,<br>
        "user_id" : user_id ,<br>
        "detail" : 'schedule_detail',<br>
        "registration_date" : 202x-xx-xx,<br>
        "modification_date" : 202x-xx-xx<br>
      }
    </td>
    <td > 
      2xx : 성공<br> 
      4xx : 실패<br>
    </td>
  </tr><tr>
    <td > 선택 일정 수정 </td>
    <td > PUT </td>
    <td > /api/schedules/{scheduleId} </td>
    <td > 
      {<br>
        "id": schedule_id, <br>
        "user_id" : user_id,<br>
        "password" : password,<br>
        "detail" : 'detail';<br>
      } 
    </td>
    <td >
      {<br>
        "id" : schedule_id ,<br>
        "user_id" : user_id ,<br>
        "detail" : 'schedule_detail',<br>
        "registration_date" : 202x-xx-xx,<br>
        "modification_date" : 202x-xx-xx<br>
      }
    </td>
    <td >
      2xx : 성공<br> 
      4xx : 실패<br></td>
    </td>
  </tr><tr>
    <td > 선택 일정 삭제 </td>
    <td > DELETE </td>
    <td > /api/schedules/{scheduleId} </td>
    <td > - </td>
    <td > - </td>
    <td > 
      2xx : 성공<br> 
      4xx : 실패<br></td>
    </tr>
</table>

> **성공 status code**
>
> >
> >200 OK :  성공
> >
> >201 Created  :   등록 성공
> >
> >204 No Content :   삭제 성공
> 
> **실패 status code**
> 
> >400 Bad Request : 클라이언트 오류로 인한 실패(ex 잘못된 요청 구문, 잘못된 요청 메시지 등)
> >
> >404 Not Found : 서버가 요청 리소스를 찾을수 없을경우 (ex 해당id에 대한 schedule data가 없을경우)
>
>---
>- ## 👷‍♂️ ERD
>- ![스크린샷 2024-10-31 오후 7 26 05](https://github.com/user-attachments/assets/f3bbbed3-4b35-462d-9d43-05d4d20a9dc0)
>---
> - ## 🔧 기능 구현 설계
>> 
>> 




